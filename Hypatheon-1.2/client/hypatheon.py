
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


'''
Hypatheon Client for PVS
'''

# hypatheon.py
# Author          : Ben Di Vito
# Created On      : 12 Sep 2004
# Last Modified By: Ben Di Vito
# Last Modified On: 02 Nov 2012

import sys, os
from StringIO import StringIO
from traceback import print_exc

# Command line invocation:
#   python [-u] hypatheon.py mode [hypatheon-dir]
#   where
#     mode = 0 for stand-alone operation, = 1 for PVS client operation
#     Hypatheon dir must come from environment variable if not supplied

# Following are errors deferred from early startup phases (while importing
# client_globals).

def show_startup_errors():
    if preference_load_error:
        user_dialog(showerror, *user_msg_sub(error_messages, 'bad_preferences',
                                             preference_load_error))
    if font_load_error:
        user_dialog(showerror,
                    *user_msg_sub(error_messages, 'missing_font_family',
                                  font_load_error))

# ---------- Create and start application ---------- #

try:
    if len(sys.argv) > 2:         # client mode
        HYPATHEON = sys.argv[2]
        os.environ['HYPATHEON'] = HYPATHEON
        for dir in ('lib',):
            sys.path.insert(0, os.path.join(HYPATHEON, dir))

    from app_config     import *  
    from client_globals import *
    import hypatheon_main
    # returns when main event loop terminates

except SystemExit, exit_code:
    pass                   # normal exit
except StartUpError, exit_code:
    show_startup_errors()
    sys.exit(exit_code)    # dialog messages should have been displayed already
except:
    trace = StringIO()
    print_exc(100, trace)
    init_log_file = \
        os.path.join(os.environ['HYPATHEON'], 'log', 'init_error_log')
#        os.path.join(os.environ['HYPATHEON'], 'log', 'Init-error-log')
    log = open(init_log_file, 'w')
    print >> log, trace.getvalue()  # backup in case internal_error fails
    log.close()

    if app_state.get('app_init'):     # Initialization complete
        internal_error(trace.getvalue(), 'Unhandled exception')
    else:
        from Tkinter import *
        from tkMessageBox import showerror    # askquestion
        init_tk = Tk()        # start Tk (but not event loop)
        init_tk.withdraw()
        showerror('Initialization error',
                  'An unhandled exception was raised during initialization. '
                  'See file %s for details.' % init_log_file)
        init_tk.destroy()
    show_startup_errors()
    sys.exit(1)

show_startup_errors()


