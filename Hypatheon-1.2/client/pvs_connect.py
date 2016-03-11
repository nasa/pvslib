
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# When Hypatheon is run as a PVS client, interaction with PVS is
# handled by the procedures in this module.  Emacs Lisp expressions
# are accepted for evaluation by PVS.  A listener thread is used to
# receive return values from PVS.  The variable pvs_return_value is
# shared between the listener and the main thread.  Mutually exclusive
# reading and writing of this variable is achieved using a semaphore.
# Logging and other operations shared by the two threads are also
# protected by the semaphore.


import os, sys, time

from client_globals import *
from StringIO import StringIO
from traceback import print_exc

import thread, threading, signal, Queue

sem = threading.Semaphore()


#-----------------------------------------

pvs_connection_log = os.path.join(log_dir, 'pvs_connection_log')

connection_log     = open(pvs_connection_log, 'w')

emit_log_header('PVS-Hypatheon Connection Log', connection_log)

 
#-----------------------------------------
# API calls available to the PVS process.

# These functions are evaluated in the main thread so they can perform any
# (reasonable) main-thread-only operations.

# Entry point for PVS-resident code to supply function names as search terms.
# A list of search result strings is created in response.  The function
# names are inserted into the text entries on the window.  The search
# result list is displayed in the listbox.

### Revisit -- might need input handling thread.

def _search_for_function_names(*fnames):
    flist = ' '.join(fnames)
    app_state['client'].gui.invoke_query_handler(
                                terms=('', ' '.join(flist), '', ''))
    emit_log_entry(connection_log,
                   "From PVS: Searching for function names '%s'." % fnames)
search_for_function_names = EventHandler('PVS API: Search for function names',
                                         _search_for_function_names)

def _search_for_pvs_identifier(ident, posn):
    app_state['find_identifier_query'](ident, posn)
    emit_log_entry(connection_log,
                   "From PVS: Searching for PVS identifer '%s'." % ident)
search_for_pvs_identifier = EventHandler('PVS API: Search for PVS identifier',
                                         _search_for_pvs_identifier)

# Append to the end of the Refs search terms a list of function names.
# These will be inserted in the main query entry widget for Refs.

def _enter_next_fnames(*flist):
    fnames = ' '.join(flist)
    # Insert in Refs term entry widget
    app_state['client'].gui.q_entries[1].insert(END, ' ' + fnames)
    emit_log_entry(connection_log,
                   "From PVS: Add function names '%s' to query." % fnames)
enter_next_fnames = EventHandler('PVS API: Enter next fnames',
                                 _enter_next_fnames)

# Invoked by the prover to update the pvs-in-checker variable indicating
# the current proving status.

def pvs_in_checker_status(status):
    app_state['client'].update_in_checker_status(int(status))


#-----------------------------------------

# Two queues are used to receive values from the PVS listener thread.
# eval_wait is used to wait for and receive the return values from PVS
# after an evaluation request.  pvs_request is used to accept commands
# initiated by PVS.  These need to be maintained as separate queues
# because the handling is different.

eval_return = Queue.Queue()
pvs_request = Queue.Queue()

# Send an Emacs Lisp expression to PVS for evaluation.
# Every value should be a valid Emacs Lisp s-expression, with the further
# restriction that it should be a list (parenthesized).
# Longer data strings are passed using file_data, which should end with
# a newline character.

def pvs_eval_and_wait(expr, log=1, ignore=0, list_val=0, file_data=None):
    if file_data:
        file(pvs_data_file, 'w').write(file_data)
    pvs_eval(expr, log, ignore)
    ### consider adding timeout:
    value = eval_return.get()           # thread blocks waiting for PVS
    if file_data:
        # Return value is send back via the same data file.
        value = file(pvs_data_file).read()
    if list_val:
        # If return value is a Lisp-style list, convert it to a Python list.
        # Assumes that individual items don't contain space characters.
        value = eval('[' + ','.join(value[1:-1].split()) + ']')
    return value

def pvs_eval(expr, log=1, ignore=0):
    global pvs_eval_log, pvs_eval_start_time
    pvs_eval_log = log
    if log:
        emit_log_entry(connection_log,
                       "Sending expression '%s' to PVS for evaluation."% expr)
        pvs_eval_start_time = time.time()
    try:
        print expr    # goes by pipe to Emacs filter function
    except:
        if not ignore:
            emit_log_entry(sys.stderr,
                           "Sending expression '%s' to PVS raised "
                           "an exception." % expr)
            trace = StringIO()
            print_exc(100, trace)
            internal_error(trace.getvalue(),
                           'Exception from outgoing PVS command.')


# PVS evaluation requests are received as Python expressions in string form.
# The queue is polled for new requests.  When one is found, it is executed
# in the main thread.  Currently the expressions are executed for their side
# effects only; no values are returned to PVS.

def accept_pvs_requests():
    while 1:
        try:
            request = pvs_request.get_nowait()
            exec(request)
        except Queue.Empty:
            root.after(500, accept_pvs_req)    # half-second intervals
            break
        except:
            trace = StringIO()
            print_exc(100, trace)
            emit_log_entry(sys.stderr,
                           "Incoming command '%s' from PVS raised "
                           "an exception.\n%s" % (request, trace.getvalue()))
     
accept_pvs_req = EventHandler('Accept PVS command requests',
                              accept_pvs_requests, 0)
root.after(100, accept_pvs_req)        # start the polling


#--------------------- Listener thread --------------------

# The following handler runs as a separate thread to receive input from
# the PVS connection.  Commands received from PVS are Python expressions
# that will be run in this thread.  The handler runs until the application
# process is terminated or the channel is closed.

def socket_handler():
    cmd = 'pass'
    while cmd:
        try:
            cmd = sys.stdin.readline()
        except ValueError:
            emit_log_mutex("ValueError when reading PVS channel; "
                           "connection closing.", sys.stderr)
            break
        except:
            trace = StringIO()
            print_exc(100, trace)
            emit_log_mutex("Reading PVS channel raised an exception.\n%s"
                           % trace.getvalue(), sys.stderr)
            break
        if verbose_logging > 1:
            emit_log_mutex('Received cmd: %s' % cmd,
                           ops_log_file, connection_log)
        if cmd == '<<<CLOSING>>>\n':
            # PVS is stopping/restarting the client.
            emit_log_mutex('PVS is stopping the client.', ops_log_file)
            sem.acquire()
            app_state['client'].prepare_to_exit()    # no DB operations allowed
            sem.release()
            break
        if cmd == '':
            # Process shutdown (empty string is EOF signal).
            emit_log_mutex('PVS connection closing.',
                           ops_log_file, connection_log)
            break
        try:
            if cmd.startswith("accept_pvs_result"):
                exec(cmd)      # no main-thread-only actions allowed
            else:
                pvs_request.put(cmd)
            if verbose_logging:
                emit_log_mutex('Executed cmd: %s' % cmd, connection_log)
        except:
            trace = StringIO()
            print_exc(100, trace)
            emit_log_entry(sys.stderr,
                           "Incoming command '%s' from PVS raised "
                           "an exception.\n%s" % (cmd, trace.getvalue()))
            accept_pvs_result('PVS RESULT ERROR')

    if verbose_logging:
        emit_log_mutex('PVS connection listener is stopping.',
                       ops_log_file, connection_log)


# Following is invoked by PVS Elisp (process filter function) in response
# to eval requests sent by the client.  There should be only one outstanding
# request at a time.  The result value will be evaluated in the main thread
# after it's been read from the queue.

def accept_pvs_result(value):
    eval_return.put(str(value))
    if pvs_eval_log > 1:
        total = (time.time() - pvs_eval_start_time)*1000.0
        emit_log_entry(connection_log,
                       'Received value %s from PVS evaluation.\n'
                       'Total processing time = %.3f msec.' %
                       (value, total))

# Protected logging uses semaphore to ensure exclusive writing.

def emit_log_mutex(msg, *logs):
    sem.acquire()
    for log in logs: emit_log_entry(log, msg)
    sem.release()

#-----------------------------------------

thread.start_new_thread(socket_handler, ())
