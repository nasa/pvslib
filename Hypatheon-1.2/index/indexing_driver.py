
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# #-------------------  Indexing driver   ------------------

# This module manages the indexing steps when running as a background
# process.  Ample logging is used to help diagnose problems.  This code
# was adapted from an earlier prototype that was intended to be run on
# a web server.

import os, sys, time, string
import thread

from operator import add, and_
from StringIO import StringIO
from traceback import print_exc

from app_globals       import *

from preference_utilities import user_prefs

verbose_logging = user_prefs.getint('Application', 'verbose_logging')


def pvs_library_driver( accept_pause_cancel, req_state,
                        main_log_file, err_log_file, upload_bytes,
                        index_dir, collec_id, library_names, description,
                        hypatheon_path, notify=None ):
    """Run the submission of a PVS whole library.
    """

    ## Phase 1
    # Stage 1
    candidate = PVSLibrarySubmission(
                    accept_pause_cancel, req_state, upload_bytes,
                    index_dir, collec_id, library_names, description,
                    hypatheon_path, notify )

    candidate.main_log_file = main_log_file
    candidate.err_log_file  = err_log_file

    generic_driver( candidate )
    
def generic_driver( candidate ):
    """Run candidate through the procedure for submission, starting with
    Phase 1 Stage 2 (i.e. the object must be created first, then passed in).

    Creates a new thread for Phase 2.
    """
    generic_phase_2_driver( candidate )

def generic_phase_2_driver( candidate ):
    """Run phase 2 on candidate.

    This should be started in a new thread."""

    ##Phase 2
    # Stage 1
    try:
        candidate.stage = 'extraction'
        candidate.typeCheck()
    except CancelProcess, e:
        raise CancelProcess, e
    except ExtractionError, e:
        candidate.logger.log( FAILURE, e )
        reraise_with_trace(ExtractionError, e)
    except Exception, e:
        candidate.logger.exception( e )
        reraise_with_trace(ExtractionError, e)

    candidate.logger.log( STATUS, 'Typechecking completed.' )

    # Stage 2
    try:
        candidate.parseTypecheckResults()
    except CancelProcess, e:
        raise CancelProcess, e
    except ExtractionError, e:
        candidate.logger.log( FAILURE, e )
        reraise_with_trace(ExtractionError, e)
    except Exception, e:
        candidate.logger.exception( e )
        reraise_with_trace(ExtractionError, e)

    # Stage 4
    try:
        candidate.stage = 'insertion'
        candidate.addToDatabase()
    except CancelProcess, e:
        raise CancelProcess, e
    except InsertionError, e:
        candidate.logger.log( FAILURE, e )
        reraise_with_trace(InsertionError, e)
        raise InsertionError, e
    except IOError, e:
        candidate.logger.log( FAILURE, e )
        reraise_with_trace(InsertionError, e)
        raise InsertionError, e
    except Exception, e:
        candidate.logger.exception( e )
        reraise_with_trace(InsertionError, e)

    success_message = '%s successfully submitted.' % candidate.library_names
    success_message += '\nNotes: \n - Processed in %.1f seconds' % \
                       (time.time() - candidate.creation_time)

    candidate.logger.log( SUCCESS, success_message )


# #-------------------  Database access   ------------------

# # Index file content using stored procedure.  Ignore if current mod time
# # in database is still current.  Return count of files indexed (0 or 1).

# orig_mod_comment = """
# Module for checking submissions and adding them to the database.

# The submission module replaces the old workmanager system of having a separate
# daemon process running on the server.  These methods are invoked entirely from
# within zope.  The submission process is divided into two phases, each of which
# is further divided into stages, as follows:

#     Phase 1 (before the successful submission page is returned):
#         Stage 1: Initial setup (loggers, initial DB entry).
#              Method: __init__
#         Stage 2: Decompress (also check for decompression bombs).
#              Method: decompress
#         Stage 3: Untar and do basic checks of archive & files.
#              Method: checkArchive
#         Stage 4: Write untarred files to filesystem.
#              Method: unpackArchive
#         Stage 5: Add email handler to logger
#              Method: addEmailHandler
#     Phase 2 (after submission page is returned, errors sent by email):
#         Stage 1: Launch prover (not nec. PVS) for typechecking 
#             and proof verification.
#              Method: runProof
#         Stage 2: Parse output for references and other DB entries.
#              Method: parseProofResults
#         Stage 3: Repack archive, and copy files into our data directory
#              Method: repackArchive
#         Stage 4: Add new library entries to DB.
#              Method: addToDatabase
#         Stage 5: Miscellaneous cleanup or end actions.
#              Method: postlude

# Each submission is an instance of a subclass of Submission.  Each stage is
# implemented as method.  The submission instance is created and advanced
# by driver functions found in the drivers module.  These are called from
# a zope python script.

# The first phase is done before the user receives confirmation of submission.
# This way, the most common and trivial packaging errors can be reported
# immediately, and do not need to bloat the database or clog the submitter's
# inbox.  The second phase is started in a new thread, though still inside
# zope.  Any errors here will be automatically logged, and all appropriate
# parties notified through the logging system.
# """

import logging, logging.handlers
import cStringIO
import re

from database_insertion import addLibToDatabase

logging.root.setLevel( logging.NOTSET )
STATUS = 23 # Stage information
NOTICE = 22 # Non-fatal Errors
SUCCESS = 25 # Successful submission
FAILURE = 28 # Failure in submission
logging.addLevelName( STATUS, 'STATUS' )
logging.addLevelName( NOTICE, 'NOTICE' )
logging.addLevelName( SUCCESS, 'SUCCESS' )
logging.addLevelName( FAILURE, 'FAILURE' )

def initRootLogger():
    """Initialize the root logger and handlers to log system messages.

    The root logger has three handlers.  One which writes every message
    everywhere to a file, master; one which writes only INFO level messages
    and above to a file, submissions; and one which emails SUCCESS level
    messages and higher to the hypatheon administrators.
    """

    max_size = 128*1024
#    max_size = 2*1024*1024
#    max_size = int(eval(hypopt.get( 'logging', 'logfile_size' ) ) )
    master = logging.handlers.RotatingFileHandler(
                 os.path.join(log_dir, 'master_log'), encoding='utf-8',
                 maxBytes=4*max_size, backupCount=3 )
    submissions = logging.handlers.RotatingFileHandler(
        os.path.join( log_dir, 'submissions_log' ), encoding='utf-8',
#        os.path.join( log_dir, 'submissions_logfile' ), encoding='utf-8',
        maxBytes=max_size, backupCount = 3 )

    emailer_format = '''At %(asctime)s, %(levelname)s for %(name)s
    at line %(lineno)d in file %(filename)s:
        %(message)s'''
    format = ' '.join(emailer_format.split())

    formatter = logging.Formatter( format )

    master.setLevel( logging.NOTSET )
    master.setFormatter( formatter )
    submissions.setLevel( logging.INFO )
    submissions.setFormatter( formatter )

    logging.root.addHandler( master )
    logging.root.addHandler( submissions )
      
if not logging.root.handlers:
    initRootLogger()


class Submission(object):

    """Class representing a single submission to the Hypatheon system.

    The Submission class encloses one submission to the hypatheon system.
    It is created by specifying the contents of the submitted archive,
    and the prover language in which it is written.  Then, call
    the methods according to the submission process layed out in the
    module docs to advance the submission through to completion.

    This class should not be instantiated directly.
    """

    def __init__(self, accept_pause_cancel, req_state,
                 fileupload, index_dir,
                 collec_id, library_names, description, hypatheon_path,
                 submission_type='library', notify=None):
        """Initialize the parts of the submission common to all submissions.

        This includes:
        * Initialize instance attributes
        * Create DB entry
        * Create logger
        * Create a temporary directory for unpacking and proving
        """

        self.stage = 'init'
        self.notify = notify  # None or pipe for directing progress updates
        self.creation_time = time.time()

        self.req_state = req_state
        self.collec_id = collec_id
        self.library_names = library_names
        self.orig_library_names = library_names
        self.description = description
        self.hypatheon_path = hypatheon_path
        self.submission_type = submission_type
        self.declarations = None # to be created by parseTypecheckResults
        self.references = None # to be created by parseTypecheckResults

        self.logger = logging.getLogger( 'submission %d' % 123 )

        self.temp_path = tmp_dir
        self.index_path = index_dir   # hypopt.get( 'pvs', 'index_path' )

    def typeCheck(self):
        """Typecheck the theories in the archive.

        Not implemented in this class.
        """

        raise NotImplementedError

    def parseTypecheckResults(self):
        """Parse any output from the prover stage and prepare to add it to the
        database.

        Output should be stored in the attributes self.declarations,
        and self.references.

        Not implemented in this class."""

        raise NotImplementedError

    def addToDatabase(self):
        """Add the database entries in this object to the actual database.

        Not implemented in this class.
        """

        raise NotImplementedError

    def postlude(self):
        """Perform miscellaneous cleanup or end actions."""
        
        pass


# Empty temp files are used to signal commands to the PVS process.

def remove_signal_file(name):
    try:
        os.remove(os.path.join(tmp_dir, name))
    except OSError:
        pass        # OK if nonexistent
for f in ('cancel', 'pause', 'resume'): remove_signal_file(f)

def add_signal_file(name):
    open(os.path.join(tmp_dir, name), 'w').close()

pvs_end_signals = ('DONE', 'EXIT', 'TC-ERR', 'ERROR')


class PVSLibrarySubmission(Submission):
    """Class for a submission of a PVS library.

    Implemenents a submission specifically for a PVS language library.
    """

    def __init__(self, accept_pause_cancel, req_state,
                 archivebytes, index_dir, collec_id, library_names,
                 description, hypatheon_path, notify=None):
        """Create a submission object for a PVS library."""

        Submission.__init__(self, accept_pause_cancel, req_state,
                            archivebytes, index_dir, collec_id, library_names,
                            description, hypatheon_path,
                            'library', notify )
        self.pvs_log_file = os.path.join(log_dir, 'extraction_run_log') ###
#        self.pvs_log_file = os.path.join(log_dir, 'pvs-lib-extract.log') ###
        self.accept_pause_cancel = accept_pause_cancel
        self.pvs_state = ('init', '')

    # A generic progress-update protocol with the PVS process is based on
    # file operations and the following listener thread.
    # Each update is a single text line to be interpreted as needed by the
    # originator.  End of processing is indicated by a value in end_signals.
    # PVS extractor indicates start and finish of each typechecking task by
    # 'tc_start <lib>' and 'tc_done <lib>'.

    def listen_for_progress(self, pipe, pvs_log, notify):
        # For now, using a file rather than a pipe.
        progress_path = os.path.join(tmp_dir, 'progress')
        progress_file = None
        while not progress_file:
            try:
                progress_file = open(progress_path)
                break
            except IOError:
                time.sleep(0.5)   # wait for extractor to create file
        if notify:
            self.listen_for_progress_notify(progress_file,  notify)
        else:
            self.listen_for_progress_batch(progress_file)
        self.stage = 'extraction_done'
        progress_file.close()
###     following moved to indexing_services
#        if not check_assertions:   # clean up temp files unless debug mode
#            os.remove(progress_path)

    def listen_for_progress_notify(self, progress_file, notify):
        while self.stage == 'extraction':
            line = progress_file.readline()    # from PVS extraction process
            if line:
                end_signals = filter(None, [ line.startswith(s)
                                             for s in pvs_end_signals ] )
                if end_signals:
                    # end_msg = end_signals[0].split()
                    break
                elif line.startswith('tc_start'):
                    self.pvs_state = ('typechecking', line.split()[1])
                    tc_start = time.time()
                    notify.write(line)   # forward in-progess message
                    notify.flush()
                elif line.startswith('tc_done'):
                    notify.write('tc_done '
                                 '...typechecking finished; '
                                 'time: %.1f seconds.\n'
                                 % (time.time() - tc_start))
                    notify.flush()
                    self.pvs_state = ('extracting', line.split()[1])
                else:
                    notify.write(line)   # in-progess message
                    notify.flush()
            elif self.tc_aborted:
                notify.write('tc_aborted ...typechecking found an error '
                             'in one or more theories; '
                             'time: %.1f seconds.\n'
                             % (time.time() - tc_start))
                notify.flush()
                # self.pvs_state should have value set by tc_start
                break   # extraction ending due to tc error
            else:
                ### following needed because readline call above isn't blocking
                time.sleep(1.0)
        # Thread terminates when extraction is done.

    def listen_for_progress_batch(self, progress_file):
        while self.stage == 'extraction':
            line = progress_file.readline()    # from PVS extraction process
            if line:
                end_signals = filter(None, [ line.startswith(s)
                                             for s in pvs_end_signals ] )
                if end_signals:
                    # end_msg = end_signals[0].split()
                    break
                elif line.startswith('tc_start'):
                    self.pvs_state = ('typechecking', line.split()[1])
                elif line.startswith('tc_done'):
                    self.pvs_state = ('extracting', line.split()[1])
#                else:
#                    pass
            elif self.tc_aborted:
                # self.pvs_state should have value set by tc_start
                break   # extraction ending due to tc error
            else:
                ### following needed because readline call above isn't blocking
                time.sleep(1.0)
        # Thread terminates when extraction is done.

    # A second listener thread is used to check for client commands.

    def listen_for_client(self):
        while self.stage == 'extraction':
            # check if client request is pending
            request = self.accept_pause_cancel(1)
            # if not request: continue
            if request == 'cancel':
                # try to stop PVS first before raising CancelProcess
                add_signal_file('cancel')
                break
            elif request == 'pause':
                remove_signal_file('resume')
                add_signal_file('pause')
            elif request == 'resume':
                remove_signal_file('pause')
                add_signal_file('resume')
            time.sleep(0.5)   # use simple polling
        # Thread terminates when extraction is done.

    def typeCheck(self):
        """Start an external PVS process to typecheck the theories.

        Blocks until typechecking finishes.  Raises an error on failure.
        """
        self.logger.debug( 'Starting PVS batch processor' )

        extraction_file = os.path.join(index_dir, 'extract-pvs-data')
        extr_source = extraction_file + '.lisp'
        exec_file_pattern = extraction_file + '.*fasl*'
        exec_files = glob.glob(exec_file_pattern)
        # Check to see if extraction module needs to be compiled.
        if not exec_files or \
           os.path.getmtime(exec_files[0]) < os.path.getmtime(extr_source):
            if self.notify:
                print >> self.notify, \
                    '\nCompiling Lisp source file for PVS data extraction.'
            compile_cmd = '(compile-file "%s")' % extr_source
            # For now, discard compiler warnings. Might want to capture later.
            subprocess.call('''"%s" -raw -E '%s (bye)' > /dev/null ''' %
                            (pvs_script, compile_cmd),
                            shell=True, stdout=sys.stderr)
            self.logger.debug( 'Recompiled extract-pvs-data.lisp' )

        notify_arg = 't' if self.notify else 'nil'
        extraction_expr = '(extract-all-libraries %s "%s" "%s" "manifest")' % \
                          (notify_arg, tmp_dir, log_dir)
        if PVS_LIBRARY_PATH:
            PLV_var = "export PVS_LIBRARY_PATH='%s';" % PVS_LIBRARY_PATH
        else:
            PLV_var = ''
        extraction_job = '(load "%s") %s (bye)' % \
                         (extraction_file, extraction_expr)
        extract_cmd = '''nice "%s" -raw -nobg -E '%s' ''' % \
                      (pvs_script, extraction_job)
        self.logger.debug(extract_cmd)

        try:
            # The progress-update file will be created by the extractor.
            # Ensure it doesn't exist, so listener thread starts cleanly.
            os.remove(os.path.join(tmp_dir, 'progress'))
        except:
            pass

        # After creating the extraction command, launch a raw PVS job to
        # conduct data extraction. When run in client mode, spawn two threads:
        #   1) listen for user commands, and
        #   2) collect status updates from the extractor.
        # In batch mode, spawn only (2).
        if self.notify:
            print >> self.notify, '\nStarting a background PVS process.'
            print >> self.notify, 'Extracting library data from PVS...'
            self.notify.flush()
            thread.start_new_thread(self.listen_for_client, ())
        self.tc_aborted = False
        thread.start_new_thread(self.listen_for_progress,
                                (None, None, self.notify))
        shell_pvs = '%s %s &> %s' % (PLV_var, extract_cmd, self.pvs_log_file)
        pvs_proc = subprocess.Popen(shell_pvs, shell=True, cwd=self.temp_path)
        exit_code = pvs_proc.wait()   # wait for shell to complete

        # Status code from PVS extraction is written to a file to ensure
        # it isn't absorbed by intervening scripts.
        if exit_code in (None, 0):
            status_file = os.path.join(tmp_dir, 'extraction_status')
            if os.path.exists(status_file):
                exit_code = int(file(status_file).read()) * 256
        self.logger.debug( 'PVS exited with code ' + str(exit_code) )

        if os.path.exists(os.path.join(tmp_dir, 'tc_in_progress')):
            # typecheck flag not cleared => PVS found a parsing or
            # typechecking error in current library
            os.remove(os.path.join(tmp_dir, 'tc_in_progress'))
            exit_code = 512   # code = 2: typecheck error
            self.tc_aborted = True   # need to signal listener to stop
        while self.stage != 'extraction_done':
            time.sleep(0.5)   # wait for listener thread to finish
        if self.notify:
            print >> self.notify, 'extraction_done'

        if self.req_state.run_state == 'canceled' \
                or exit_code == 256:    # code = 1
            raise CancelProcess   # not an error: user cancellation
        elif exit_code == 512:    # code = 2: typecheck error
            self.continue_with_insertion()   # skip remaining libs
        elif exit_code in (None, 0):
            pass   # clean exit code enables next stage
        else:                     # code > 2: other errors, bugs
            log = file( self.pvs_log_file ).read()
            raise ExtractionError, \
                'PVS failed with error code %d.  ' \
                'Log file follows:\n%s' % (exit_code, log)
        sys.stdout.flush()

    def continue_with_insertion(self):
        bad_lib = self.pvs_state[1]
        tc_err = "PVS encountered a typechecking error in library '%s'." \
                 % bad_lib
        emit_log_entry(self.err_log_file, tc_err)
        index = self.library_names.index(bad_lib)
        remaining_libs = self.library_names[index+1:]
        self.library_names = self.library_names[:index]
        if remaining_libs:
            remaining_msg = ", and the unprocessed libraries '%s'," % \
                            ', '.join(remaining_libs)
        else:
            remaining_msg = ''
        skip_msg = "Extraction and indexing of library '%s'" \
                   "%s will be skipped." % (bad_lib, remaining_msg)
        emit_log_entry(self.err_log_file, skip_msg)
        if self.notify:
            print >> self.notify, ''  # 'vspace 2'
            print >> self.notify, 'notice %s' % tc_err
            print >> self.notify, ''  # 'vspace 1'
            print >> self.notify, 'notice %s' % skip_msg
            print >> self.notify, \
                "notice Database insertion will continue with those " \
                "libraries that were extracted successfully. " \
                "Any pre-existing versions of skipped libraries " \
                "will remain in the database."
            print >> self.notify, ''  # 'vspace 2'
#         raise ExtractionError, tc_err

    def parseTypecheckResults(self):

        """Parse the declarationOutput and referenceOutput files for PVS
        entities and references.
        """
        pass

    def addToDatabase(self):
        """Add the declarations and references in this object to the database.
        """

        # If this phase starts in paused state, wait until resumed.
        while self.req_state.run_state == 'paused':
            time.sleep(1.0)
        lib_total, thy_total = \
            addLibToDatabase(self, self.accept_pause_cancel)

        attempted_lib_count = len(self.orig_library_names) - lib_total
        if attempted_lib_count > 0:
            attempted_clause = 'There were %s unsuccessful library ' \
                               'atttempts.' % attempted_lib_count
        else:
            attempted_clause = 'All attempted libraries were indexed.'
        emit_log_entry(self.main_log_file,
                       '<<<<< End of library indexing.\n'
                       'Libraries, theories extracted and inserted:  %d, %d\n%s'
                       % (lib_total, thy_total, attempted_clause))
 

    def postlude(self):
        """Store these PVS files to the PVS data dir."""
        pass
