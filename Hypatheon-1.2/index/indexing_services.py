
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# PVS content indexing begins here.  Key functions are invoked from a
# script and run within a separate process.  Optionally can be invoked
# from the client, where it reports progress on standard output while
# checking for commands on standard input.


import os, sys, time, string, glob, shutil
import thread, Queue

from operator import add, and_
from StringIO import StringIO
from traceback import print_exc

from app_globals       import *

from db_operations     import *

from platform_utilities import *

# Normal events and user profile errors are written to the main log.
# Exceptions, database errors and other anomalies are sent to the error log.

main_log_file = open(os.path.join(log_dir, indexing_log_name), 'a')
#err_log_file  = open(os.path.join(log_dir, indexing_err_log), 'a')

#sys.stderr = err_log_file
err_log_file = sys.stderr

reporting_interval = 1.0  # time between progress reports (sec)
work_interval      = 0.1  # work unit duration (sec)

_temp_file = new_temp_file_name()
_temp_file_decomp = new_temp_file_name()

see_log_msg = ' See file <hypatheon>/log/%s for details.' % indexing_log_name
see_err_msg = ' See file <hypatheon>/log/index_err_log for details.'
#see_err_msg = ' See file <hypatheon>/log/%s for details.' % indexing_err_log

# Establish a new progress group so spawned child processes can be stopped.

self_pid = os.getpid()
#class KillProcess(Exception):  pass

def init_services(client_mode):
    if client_mode:
        # this call is not allowed when process is started by cron
        os.setpgid(self_pid, self_pid)


#--------------------- Command Listening ----------------------

# When invoked from the client, an active connection between client
# and indexer is maintained.  A separate listener thread is used to
# respond to client requests.

class CommandState(Queue.Queue):
    def __init__(self, delay):
        Queue.Queue.__init__(self)
        self.delay = delay
        self.delay_sec = delay / 1000.0
        self.break_time = time.time() + work_interval

# Thread function to handle generic control protocol.
# Accept commands from calling/initiating process.
# Each command is a single line of text from stdin.
# Cancellations are accepted at any time.

def listen_for_commands(queue):
    while 1:
        try:
            signal = sys.stdin.readline()
            if not signal: break    # pipe closed
            signal = tuple(signal.split())
            queue.put(signal)
            if signal[0] == 'kill':
                # When PVS typechecking or database insertion takes too long to
                # to reach a checkpoint after a cancel signal, the client will
                # issue a kill command.  No graceful termination is possible;
                # killing the process group is the only option.
                import signal
                os.killpg(self_pid, signal.SIGKILL)  # forcibly stop process group
#            if signal[0] == 'kill': break
        except:
            break     # pipe closed by client


class RequestState(object):
    def __init__(self):
        self.mode = 'client'
        self.run_state = 'running'

req_state = RequestState()

# Check for and act on pause and resume commands.
# Only accepted when indexing procedures stop to allow a break.
# This function is called by the main thread.  It reads a queue
# filled by the listener thread.  Can throw CancelProcess exception.

def accept_pause_cancel(callback=0, pause_msg='', resume_msg=''):
    while 1:
        try:
            signal = cmd_state.get_nowait()
        except Queue.Empty:
            if req_state.run_state == 'paused' and pause_msg:
                time.sleep(1.0)
                continue
            else:
                return None

        if signal[0] == 'cancel':
            req_state.run_state = 'canceled'
            if callback: return 'cancel'
            raise CancelProcess
#        elif signal[0] == 'kill':
#            if callback: return 'kill'
#            raise KillProcess
        elif signal[0] == 'pause':
            req_state.run_state = 'paused'
            emit_log_entry(main_log_file, 'Pausing indexing job')
            if pause_msg:
                print pause_msg
                sys.stdout.flush()
            else:
                return 'pause'
            time.sleep(1.0)
        elif signal[0] == 'resume':
            req_state.run_state = 'running'
            emit_log_entry(main_log_file, 'Resuming indexing job')
            cmd_state.delay = int(signal[1])
            cmd_state.delay_sec = cmd_state.delay / 1000.0
            if resume_msg:
                print resume_msg
                sys.stdout.flush()
            else:
                return 'resume'
#        else:   # unexpected command
#            return None

# Check if it's time to take a break.  (Currently unused.)

def check_for_break(cmd_state):
    if time.time() > cmd_state.break_time:
        time.sleep(cmd_state.delay_sec)
        cmd_state.break_time = time.time() + work_interval
#    emit_log_entry(main_log_file, cmd_state.break_time)


#-----------------------  File System Scanning   ------------------------

def create_profile(libs):
    paths = []
    find_library_dirs(*libs)
    for lib in libs:
        paths.append((os.path.dirname(all_lib_dirs.get(lib, '')), lib))
        # if lib == 'prelude':
        #     paths.append(('prelude', 'prelude'))
        # else:
        #     paths.append((os.path.dirname(all_lib_dirs.get(lib, '')), lib))
    lib_dict = {}
    for dir, lib in paths:
        if dir == '' and lib != 'prelude':
            emit_log_entry(main_log_file,
                           ">>>>> Library '%s' was not found;"
                           " it will be skipped." % lib)
            continue
        if dir in lib_dict:
            lib_dict[dir].append(lib)
        else:
            lib_dict[dir] = [lib]
    return lib_dict

# Manifest file is read by PVS during data extraction phase.

def create_manifest(dir_libs):
    manifest_path = os.path.join(tmp_dir, 'manifest')
    manifest = open(manifest_path, 'w')
    print >> manifest, '('
    for dir, libs in dir_libs:
        lib_str = ' '.join([ '"%s"' % lib for lib in libs ])
        print >> manifest, '("%s" %s)' % (dir, lib_str)
    print >> manifest, ')'
    manifest.close()

# Find a suitable ordering for indexing the libraries within a collection.
# Refresh the library dependency data and use to reorder the submitted
# library list so they are consistent.

def find_library_ordering(dir, libs):
    if dir == 'prelude': return libs
    # regenerate the dependencies file
    deps = os.path.join(dir, 'dependencies.txt')
    cmd = 'cd "%s"; "%s" > "%s"' % \
          (dir, os.path.join(bin_dir, 'lib_deps'), deps)
    subprocess.call(cmd, shell=True)
    dep_lines = file(deps).readlines()
    try:
        ### following string should be a common variable
        start = dep_lines.index('Library processing order (height, name):\n')
    except ValueError:
        return libs        # dependency file malformed
    rest = dep_lines[start+2:-1]   # drop extra lines before and after
    ordering = [ line.strip().split()[1] for line in rest ]
    result = []
    for lib in ordering:
        if lib in libs: result.append(lib)
    for lib in libs:
        if lib not in result: result.append(lib)    # add any that were missed
    return result


# Determine which files and theories were not indexed during a given run.
# Write results to a log file.

def emit_unindexed_file_report():
    excluded = eval(user_prefs.get('Indexing', 'excluded_libraries'))
    unindexed_theories = []
    num_lib, num_thy = 0, 0
    progress_path = os.path.join(tmp_dir, 'progress')
    unindexed_log = open(os.path.join(log_dir, 'unindexed_files'), 'w')
    print >> unindexed_log, \
        "===== Report on unindexed library files and theories =====\n\n" \
        "Indexing run finished at %s.\n" \
        "Excluded libraries:  %s\n" \
        % (time.strftime('%H:%M:%S on %d %b %Y', time.localtime()), excluded)
    def finish_log(msg=''):
        if msg:
            print >> unindexed_log, msg
        else:
            print >> unindexed_log, \
                "Summary:  %d theories in %d partially indexed libraries " \
                "remain unindexed." % (num_thy, num_lib)
        unindexed_log.close()
    try:
        progress_file = open(progress_path)
    except IOError:
        finish_log("Progress file is missing -- no data to work with.")
        return

    line = progress_file.readline()
    while line:
        if line.startswith('tc_done'):
            library = line.split()[1]
        elif line.startswith('orphan_theories'):
            unindexed_theories.extend(line.split()[2:])
        elif line.startswith('extract_files'):
            unindexed = unindexed_theories + \
                        [ '    %s.pvs[*]' % f for f in
                          unindexed_files(library, line.split()[2:]) ]
            if unindexed:
                num_lib += 1
                num_thy += len(unindexed)
                print >> unindexed_log, \
                    "%2d. Library '%s':\n\n%s\n" \
                    % (num_lib, library, '\n'.join(unindexed))
                del unindexed_theories[:]
        # other progress line types ignored
        line = progress_file.readline()

    progress_file.close()
    finish_log()
    if not check_assertions:   # clean up temp files unless debug mode
        os.remove(progress_path)
  

#----------------------------  Indexing   -----------------------------

# Conduct indexing of libraries whose paths were collected by a
# previous pass.  Display running count of number completed.

def conduct_indexing(collec_id, lib_names, dir_libs, notify,
                     purge_old, update_stats):
    global current_file_path
    lib_total, thy_total = 0, 0
    lib_extract, thy_extract = 0, 0
    lib_insert, thy_insert = 0, 0
    report_time = 0.0

    for dir, libs in dir_libs:
        lib_total += len(libs)
        for lib_name in libs:
            if lib_name == 'prelude': continue
            lib_path = os.path.join(dir, lib_name)
            thy_total += len(glob.glob(os.path.join(lib_path, '*.pvs')))
    if notify:
        print 'file_counts', lib_total, thy_total
        sys.stdout.flush()
        driver_notify = sys.stdout
    else:
        driver_notify = None

    if purge_old:
        delete_count = 0
        emit_log_entry(main_log_file,
                       '>>> Purged %d deleted paths from database.' %
                       delete_count)
    else:
        delete_count = 'none'
    if notify:
        print 'delete_count', delete_count
        sys.stdout.flush()

    from indexing_driver   import pvs_library_driver
    accept_pause_cancel()      # can raise CancelProcess
    code = pvs_library_driver(accept_pause_cancel, req_state,
                              main_log_file, err_log_file,
                              None, dir, collec_id, lib_names, lib_names,
                              hypatheon_dir, driver_notify)

    if notify:
#        print 'current_counts', \
#              lib_extract, thy_extract, lib_insert, thy_insert
        if update_stats: print 'update_stats yes'
        else:            print 'update_stats no'
        sys.stdout.flush()
    if notify:
        if warnings:
            print ('warning indexing generated %d warning(s).' % warnings) \
                  + see_log_msg
            emit_log_entry(main_log_file,
                           '*** %d warnings/errors were issued.' % warnings)
        else:
            print 'done'       # signal successful end of job
        sys.stdout.flush()
    emit_unindexed_file_report()


# Progress update protocol/sequence:
#   ('process_id', ...), ('file_counts', ...), ('delete_count', ...),
#   ('extract_counts', ...), ..., ('extract_counts', ...),
#   ('extract_files', lib-name, thy-name1, ...),
#   ('orphan_theories', lib-name, thy-name1, ...),
#   ('insert_counts', ...), ..., ('insert_counts', ...),
#   'update_indexes', '(update_stats yes/no)', 'extraction_done', 'done'


#----------------------------  Deletion   -----------------------------

# Conduct deletion of named libraries.
### Much of this module is not needed for deletion.

def conduct_deletion(collec_id, lib_names, vacuum, notify):
    # for now, notify is not used
    num_libs = removeLibsFromDatabase(collec_id, lib_names, vacuum)
    emit_log_entry(main_log_file,
                   '<<<<< End of library deletion.\n'
                   '%d libraries were deleted.' % num_libs)
    if vacuum:
        emit_log_entry(main_log_file, 'Database was vacuumed.')


#-----------------------------------------

current_file_path = ''      # names file if exception raised

# This is the top-level function for externally invoking the indexing
# process.  Set notify=1 to interact via pipes.

def index_and_delete(collec_name, db_version, lib_names, action="index",
                     delay=0, notify=0,
                     purge_old=0, update_stats=0, ordered=0):
    global cmd_state, warnings
    trace = StringIO()
    exit_code = 0
    warnings = 0
    delay, notify = int(delay), int(notify)
    purge_old, update_stats = int(purge_old), int(update_stats)
    print >> main_log_file, ''

    library_names = lib_names.split()
    if action == 'index': action_phrase = 'indexing for'
    else:                 action_phrase = 'deletion of'
    emit_log_entry(main_log_file,
                   ">>>>> Begin %s libraries %s." %
                   (action_phrase, str(tuple(library_names))))
    if notify:
        initiation_mode = 'the client'
        req_state.mode = 'client'
    else:
        initiation_mode = 'a script'
        req_state.mode = 'script'
    emit_log_entry(main_log_file, '>>> Initiated by %s.' % initiation_mode)
    if action.startswith('delete'):
        notify = 0     ### flag used in deletion only for initiation mode

    def report_exception(action, phase, err_obj=''):
        print_exc(20, trace)
        cap_action = action.capitalize()
        err_msg = '***** %s aborted after an error occurred during %s.' \
            % (cap_action, phase)
        emit_log_entry(err_log_file, err_msg)
        emit_log_entry(err_log_file, trace.getvalue())
        emit_log_entry(main_log_file, err_msg)
        emit_log_entry(main_log_file, '<<<<< End of library %s.' % action)
        if notify:
            print 'error %s aborted after an error occurred during %s.' \
                  '  %s %s' % (action, phase, err_obj, see_err_msg)
            try:
                sys.stdout.flush()
            except:
                pass
    try:
        cmd_state = CommandState(delay)
        coll_id_candidates = [ n for n, c in enumerate(collections)
                               if c[0] == collec_name and c[2] == db_version ]
        if len(coll_id_candidates) != 1:
            raise ValueError, \
                  'Invalid collection name [%s-%s]' % (collec_name, db_version)
        collec_id = coll_id_candidates[0]
        if action == 'index':
            open_db_connection()
            pvs_vers_sw, pvs_vers_db = \
                (get_pvs_version(),
                 query_some('select pvs_version from hypatheon',
                            collec_id)[0][0])
            for conn in db_conn: conn.close()
            if pvs_vers_sw != pvs_vers_db:
                raise ValueError, \
                      'PVS version (%s) does not match that in database (%s)' \
                      % (pvs_vers_sw, pvs_vers_db)
            if notify:
                print 'process_id', os.getpid()
                sys.stdout.flush()
            if notify:
                thread.start_new_thread(listen_for_commands, (cmd_state,))
            lib_dict = create_profile(library_names)
            if ordered:
                dir_libs = [ (dir, libs) for dir, libs in lib_dict.items() ]
            else:
                dir_libs = [ (dir, find_library_ordering(dir, libs))
                             for dir, libs in lib_dict.items() ]
            create_manifest(dir_libs)
            ordered_names = reduce(add, [ d[1] for d in dir_libs ])
            conduct_indexing(collec_id, ordered_names, dir_libs,
                             notify, purge_old, update_stats)
        elif action == 'delete':
            conduct_deletion(collec_id, library_names, 0, notify)
        elif action == 'delete_vacuum':
            conduct_deletion(collec_id, library_names, 1, notify)
        
    except CancelProcess:
        emit_log_entry(main_log_file,
                       '+++++ Indexing/deletion process canceled by client.')
        emit_log_entry(main_log_file,
                       '<<<<< End of library indexing/deletion.')
        if notify:
            print 'canceled'     # signal cancellation to caller
            sys.stdout.flush()
        exit_code = 1

    # except KillProcess:
    #     # This is raised if normal cancellation request times out.
    #     emit_log_entry(main_log_file,
    #                    '+++++ Indexing/deletion process killed by client.')
    #     emit_log_entry(main_log_file, '<<<<< End of library indexing/deletion.')
    #     if notify:
    #         print 'killed'       # signal cancellation to caller
    #         sys.stdout.flush()
    #     import signal
    #     os.killpg(self_pid, signal.SIGKILL)    # forcibly stop process group
    #     exit_code = 1

    except ValueError, e:
        report_exception('indexing/deletion', 'initialization', e)
        exit_code = 2

    except ExtractionError, e:
        report_exception('indexing', 'PVS data extraction', e)
        exit_code = 4
        
    except InsertionError, e:
        report_exception('indexing', 'database insertion', e)
        exit_code = 7
        
    except DeletionError, e:
        report_exception('deletion', 'database deletion', e)
        exit_code = 10
        
    except IOError, exc_obj:
        emit_log_entry(main_log_file,
                       '***** IOError signaled: %s' %
                       ' ; '.join([ str(a) for a in exc_obj.args ]))
        emit_log_entry(main_log_file, '+++++ Indexing/deletion aborted.')
        emit_log_entry(main_log_file, '<<<<< End of library indexing/deletion.')
        # Don't try to notify because error was most likely a broken pipe.
        exit_code = 20
        
    except Exception, exc_obj:
        exception_msg = ' ; '.join([ str(a) for a in exc_obj.args ])
        emit_log_entry(main_log_file,
                       '*** Unhandled exception: %s.\n%s' %
                       (exception_msg, see_err_msg))
        emit_log_entry(err_log_file,
                       '*** Unhandled exception: %s' % exception_msg)
                       
        print_exc(20, trace)
        emit_log_entry(err_log_file, trace.getvalue())
#         if current_file_path:
#             file_msg = '*** File being indexed when ' \
#                        'exception occurred:\n   %s' % current_file_path
#         else:
#             file_msg = '*** Path collection was in progress when ' \
#                        'exception occurred.'
#         emit_log_entry(main_log_file, file_msg)
#         emit_log_entry(err_log_file, file_msg)
        emit_log_entry(main_log_file, '<<<<< End of library indexing/deletion.')
        if notify:
            print 'error internal error in indexing/deletion process' \
                  + see_err_msg
            sys.stdout.flush()
        exit_code = 30

    try:
        main_log_file.close()
        err_log_file.close()
        os.remove(_temp_file)
        os.remove(_temp_file_decomp)
    except:
        pass
    return exit_code
