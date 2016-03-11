
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Construction of Hypatheon Client's main application window begins in this
# module.  Included is the menubar layout.  The handler functions for the
# menu items are found in module menu_actions.  Query processing takes
# place in modules submit_query and query_results.


import os, sys, time, string, glob, re, signal

from app_globals    import *
from client_globals import *
from widget_utils   import *

debug_dir = os.environ.get('HYPATHEON_DEBUG')
if debug_dir:
    sys.path.insert(0, debug_dir)
    from devel_utils import *

# If script was started with an argument of 1, we are connected to PVS.
# Save the mode in global dictionary app_state.

if len(sys.argv) > 1 and int(sys.argv[1]) == 1:
    from pvs_connect import *
    app_state['exec_mode'] = 'PVS-client'
elif pvs_path:
    app_state['exec_mode'] = 'Stand-alone'
else:
    app_state['exec_mode'] = 'Search-only'    # without a PVS installation

from tabbed_notebook import add_notebook_panel
from app_menubar     import make_app_menubar

# Import db_operations and establish connections to the SQLite databases.

try:
    from db_operations import *
    open_db_connection()             # opens all that exist
except DatabaseError, err_msg:
    user_dialog(showerror, 'Connect to databases', err_msg)
except ConnectionFailure, err_msg:   ### can this be raised?
    user_dialog(showerror, *error_messages['db_server_down'])
    emit_log_entry(main_log_file, 'Database connection failure:\n%s' % err_msg)
    raise StartUpError

from menu_actions  import *
from submit_query  import perform_query
from query_results import Query_Page

query_entry_width = 28

#-----------------------------------------

# Create main window for launching queries.  Window built on start-up
# and remains up throughout Hypatheon session (unless user kills it).

class GUI_elements(object):       # GUI objects, including those accessed
                                  # during session; initialize only once
    def __init__(self, master, app):
        self.master = master
        if app_state['exec_mode'] == 'PVS-client':
            emacs_pid = pvs_eval_and_wait('(emacs-pid)')
        else:
            emacs_pid = app_state['exec_mode']
        master.title('Hypatheon Client for PVS (%s)' % emacs_pid)
        if on_aqua: pass           # no separtor needed on OS X
        else:
            Frame(master, height=1, bg='black', bd=0
                  ).pack(fill=X, expand=YES)

        status_row = Frame(master)    # drawing info displays, control buttons
        self.status_msg, self.prover_status, self.import_status, \
            self.exec_mode_status = \
            [ Label(status_row, relief=SUNKEN, bd=1, padx=5,
                    font=text_font)
              for i in range(4) ]     # must match number of fields
        self.status_msg['text'] = 'Welcome to Hypatheon     '
        for widget in (self.status_msg, self.prover_status, self.import_status):
            widget.pack(padx=2, side=LEFT)
        Frame(status_row).pack(side=LEFT, fill=X, expand=YES)
        if on_aqua:                   # avoid resize handle on lower right
            Frame(status_row).pack(padx=10, side=RIGHT)
        self.exec_mode_status.pack(padx=2, side=RIGHT)
        status_row.pack(padx=5, pady=2, fill=X, side=BOTTOM)

        self.create_query_control_area(master)
        self.query_history = []   # collect previous queries for listbox

        if on_osx: main_geometry = '+0+40'   # upper left, with Y offset
        else:      main_geometry = '-0+0'    # upper right
        master.geometry(newGeometry=main_geometry)
        master.deiconify()

# At the top of the main window is where queries are entered and launched.
# This region contains a few Entry widgets for entering search terms
# plus the buttons needed for control.

    def create_query_control_area(self, win):
        def clear_entries():
            for ent in self.q_entries: ent.delete(0, END)
            self.q_entries[0].focus_set()
        bind_control_key(win, 'u', clear_entries)
        def invoke_query(dummy=None, terms=None, explicit_query=1):
            if terms == None:
                first = self.q_entries[0].get()
                if ';' in first:
                    packed = split_and_pad_terms(first)
                    terms = [ term.strip() for term in packed ]
                else:
                    terms = [ ent.get().strip() for ent in self.q_entries ]
            results = submit_query(terms, explicit_query)
            if not explicit_query and not results:
                return results
            for ent, term in zip(self.q_entries, terms):
                ent.delete(0, END)
                ent.insert(END, term)
            return results
        self.invoke_query_handler = \
            EventHandler('Invoke query choice', invoke_query)
        button_width = 5

        def make_bottom_right(parent):
            try:
                # If the ttk combo-box widget is available, use it for the
                # Types field.  Otherwise, create one out of other Tk widgets.
                from ttk import Combobox
                itypes = [ ' ' + t for t in cap_item_types ]
                self.type_ent = Combobox(parent, values=itypes,
                                         width=(query_entry_width - 6),
                                         height=len(itypes))
                self.ttk_type_entry = 1
                return self.type_ent
            except:
                self.ttk_type_entry = 0    # ttk not present

            bottom_right = Frame(parent)
            self.type_ent = entry_widget(bottom_right,
                                         width=(query_entry_width - 6))
            self.type_ent.pack(side=LEFT, fill=X, expand=YES)
            self.types_pulldown_button = \
                Button(bottom_right, text=u_triagdn, pady=0, anchor=S,
                       command=EventHandler('Display file type list',
                                            self.types_pull_down))
            self.types_pulldown_button.pack(side=LEFT, padx=2)
            return bottom_right

        def col_4(parent, row):
            if row == 0:
                return entry_widget(parent, width=query_entry_width)
            else:
                return make_bottom_right(parent)
        def col_6(parent, row):
            if row == 0:
                return ThinButton(parent, text='Clear', width=button_width,
                                  command=EventHandler('Clear entries',
                                                       clear_entries, 0))
            else:
                self.submit_function_button = \
                    ThinButton(parent, text='Search', width=button_width+1, ###
                               command=self.invoke_query_handler)   # ,
                               # default=ACTIVE)
                return self.submit_function_button
        text_bg = colors['text_bg_color']
        q_frame, q_widgets = build_table(win,
            (lambda w,t: Label(w, text=t),
             lambda w,wid: entry_widget(w, width=wid),
             lambda w,t: Label(w, text=t), col_4,
             lambda w,t: Frame(w), col_6),
            (('Name:', query_entry_width, ' Refs:', 0, '', 0),
             ('Path:', query_entry_width, ' Type:', 1, '', 1)),
            anchors=(E, EW, E, EW, E, EW), col_weights=(0, 1, 0, 1, 0, 0),
            padx=1, pady=2)
        q_frame.pack(fill=X)
        Frame(win).pack(pady=1)
        self.q_entries = [q_widgets[0][1], q_widgets[0][3],
                          q_widgets[1][1], self.type_ent]
        if not using_ttk and self.ttk_type_entry:
            for ent in self.q_entries[:3]:
                ent['bg'] = 'white'
        for ent in self.q_entries:
            ent.bind('<Return>', self.invoke_query_handler)
        self.q_entries[0].focus_set()

        # The rest of the window is managed as a tabbed notebook, where
        # query results will be displayed.
        self.notebook_panel = add_notebook_panel(win)


# Another pull-down menu is provided for the list of available item types.
# This is just a way to implement a simple combo-box, which is a widget
# type not included in Tk until 8.5.  The behavior is a little different
# from a combo-box because strings are appended to the Entry value rather
# than replacing it.

    def types_pull_down(self):
       button = self.types_pulldown_button
       x = button.winfo_rootx() - self.master.winfo_rootx() + 20  ###
       y = button.winfo_rooty() - self.master.winfo_rooty() + 25  ###
       fr = Frame(self.master, relief=SOLID, bd=2)
       itypes = cap_item_types[:]
       tlist = Listbox(fr, bd=0, highlightthickness=0, relief=FLAT,
                       background=colors['text_bg_color'], exportselection=0, 
                       height=min(20, 1+len(itypes)), width=16)
       if using_ttk or using_tile:
           scrollbar = Scrollbar(fr, command=tlist.yview)
       else:
           scrollbar = Scrollbar(fr, command=tlist.yview,
                                 width=10, elementborderwidth=2,
                                 highlightthickness=0, bd=1)
       tlist.configure(yscrollcommand=scrollbar.set)
       tlist.pack(side=LEFT, fill=BOTH, expand=YES, padx=2, pady=2)
       scrollbar.pack(side=LEFT, fill=Y, expand = YES, pady=2)
       tlist.insert(END, 'None (clear)')
       for itype in itypes:
           tlist.insert(END, itype)
       def select_decl_type(y):
           index = int(tlist.nearest(y))
           if index < 0: return
           if index == 0:
               self.type_ent.delete(0, END)
           else:
               self.type_ent.insert(END, ' ')
               self.type_ent.insert(END, tlist.get(index).strip())
           fr.destroy()
       tlist.bind('<Button-1>',
                  EventHandler('Select decl type',
                               lambda event: select_decl_type(event.y)))
       def history_motion(event):
           tlist.selection_clear(0, END)
           tlist.selection_set(int(tlist.nearest(event.y)))
       tlist.bind('<Motion>',
                  EventHandler('History list motion', history_motion, 0))
       fr.place(x=x, y=y, anchor=NE)
       def dismiss_if_out(event):
           win = event.widget
           if not str(win).startswith(str(fr)): fr.destroy()
       self.master.bind('<Button-1>', lambda event: dismiss_if_out(event))


#-----------------------------------------

def log_file_menu_item(log_file_tuple):
    title, file_name, accel, moveto = log_file_tuple
    full_title = 'Hypatheon: %s' % title
    path = os.path.join(log_dir, file_name)
    return title, lambda : view_log_file(full_title, path, moveto), accel

optional_log_menu = []
if app_state['exec_mode'] != 'Search-only':
    optional_log_menu.append(
        log_file_menu_item( ('Library Indexing Log',
                             indexing_log_name, 0, 1.0) )) 
    optional_log_menu.append(
        log_file_menu_item( ('Indexing Error Log',
                             indexing_err_log, 0, 1.0) ))
if app_state['exec_mode'] == 'PVS-client':
    optional_log_menu.append(
        log_file_menu_item( ('PVS Connection Log',
                             pvs_connection_log, 0, 1.0) ))

log_menu_items = [ log_file_menu_item(
                       ('Client Event Log', client_main_log, 0, 0.0)),
                   log_file_menu_item(
                       ('Client Error Log', client_error_log, 8, 1.0)),
                   ] + optional_log_menu

if query_log_file:    # from verbose_logging flag in user_prefs
    log_menu_items = log_menu_items + \
                     [ log_file_menu_item(
                           ('SQL Query Log', 'query_log', 0, 1.0)) ]
if explain_log:    # from explain_queries debug flag in app_config
    log_menu_items = log_menu_items + \
                     [ log_file_menu_item(
                           ('Query Explanation Log',
                            'query_explanations', 0, 0.0)) ]

# This class specifies the menubar layout, then creates an instance of
# class GUI_elements, which constructs all of the key structures.

class Hypatheon_client(object):
    def __init__(self, master):
        self.master = master
        # Start-up execution mode:  0: standalone, 1: PVS client
        self.exec_mode = app_state['exec_mode']
        app_menus = self.app_menus()
        menu_states = [ NORMAL for m in app_menus ]
        make_app_menubar(master, self, app_menus, menu_states,
                         ('Preferences...', change_preferences, 0),
                         ('About Hypatheon Client', about_window, 0) )
        self.gui = GUI_elements(master, self)
        master.protocol('WM_DELETE_WINDOW', self.exit)
        try:
            self.saveas_initialdir = os.environ['HOME']
        except:
            self.saveas_initialdir = '/'
        self.are_we_in_checker()    # sets status line
        master.after(500, self.reload_query_history)
        self.master.update_idletasks()

    def app_menus(self):
        if app_state['exec_mode'] != 'Search-only':
            optional_view_items = [
                ('Unindexed Files', view_rogue_files, 0),
                ('Theory-File Mapping', view_theory_file_mapping, 0),
                ('Library Dependencies',
                 lambda : display_library_dependencies(), 9), ]
        else:
            optional_view_items = []
        menu_1 = \
            [['File', 0,
              ('Restart Client Process', self.restart_client_process, 0),
              None,
              ('Exit  ', self.exit, 0, 'q'),
              ],
             ['Edit', 0,
              ('Redo Previous Queries...',
               lambda : recall_previous_queries(app_state['client'].gui), 0),
              ('Edit Previous Query...',
               lambda : recall_previous_queries(app_state['client'].gui, 0), 0),
              ],
             ['View', 0,
              ('Database Status', checkServerStatus, 0),
              ('Library Status', check_indexed_libraries, 0), ] +
             optional_view_items + [None] + log_menu_items + [
                None,
                ('Recent Messages', show_message_list, 5),
                ]]
        menu_2 = [] if app_state['exec_mode'] == 'Search-only' else \
            [['Databases', 0,
              ('Index Selected Libraries...',  index_selected_libs, 0),
              ('Index Library Grouping...',  index_library_grouping, 14),
              ('Delete Selected Libraries...', delete_selected_libs, 0),
              ('Manage Library Databases...',  manage_databases, 0),
              ]]
        menu_3 = [['Help', 0,
                  ('Quick Start Guide',    quick_start, 0),
                  ("User's Guide",         help_desk, 0, 'h'),
                  ('Submit Problem Report', submit_problem_report, 0),
                  ]]
        return menu_1 + menu_2 + menu_3

    def exit(self):
        if self.exec_mode == 'PVS-client':
            self.prepare_to_exit()
            pvs_eval_and_wait('(restart-hypatheon-client t t)')    # exit-only
            # PVS will never return; it will delete this process.
        else:
            self.app_exit()

    def app_exit(self):
        emit_log_entry(ops_log_file, 'App closing.')
        if not app_state.get('app_closed'):
            self.prepare_to_exit()
        close_db_connection()    # will close all collections
        self.master.after(100, lambda: self.master.destroy())

    # This method can be invoked from either the main thread or the
    # PVS-connection listener thread.  Consequently, it can't perform
    # any database operations.
    
    def prepare_to_exit(self):
        qh_file = os.path.join(tmp_dir, 'query_history')
        # if os.path.exists(qh_file):
        #     prev_qh = eval(file(qh_file).read())
        # else:
        #     prev_qh = []
        ### merge query history with that of other client instances;
        # discard older items from long lists; ### make len a pref???
#        new_qh = self.gui.query_history[:100] + prev_qh[:100]
        new_qh = self.gui.query_history[:100]
        file(qh_file, 'w').write(str(new_qh))
        # clean up any unneeded temp files:
        subprocess.call('cd "%s"; rm -f %s_*' % (tmp_dir, os.getpid()),
                        shell=True)
        delete_old_log_files('err_*')
        delete_old_log_files('problem_*')
        emit_log_entry(ops_log_file, 'App closed.\n==============\n')
        app_state['app_closed'] = 1

    def restart_client_process(self):
        if user_dialog(askokcancel, *dialog_messages['ask_restart_client']):
            if self.exec_mode == 'PVS-client':
                self.prepare_to_exit()
                pvs_eval_and_wait('(restart-hypatheon-client t)')
                # PVS will never return; it will delete this process.
            else:
                subprocess.call('(sleep 2; "%s") &' %
                                os.path.join(bin_dir, 'launch_client'),
                                shell=True)
                self.app_exit()

    def reload_query_history(self):
        qh_file = os.path.join(tmp_dir, 'query_history')
        if not os.path.exists(qh_file): return
        qh = eval(file(qh_file).read())
#        os.remove(qh_file)    # leave old one around in case process dies
        if qh:
            self.gui.query_history = qh
            self.gui.invoke_query_handler(terms=qh[0][1:])
        

#-----------------------------------------

    def pvs_eval_and_wait(self, *args, **kwargs):
        return pvs_eval_and_wait(*args, **kwargs)

    def are_we_in_checker(self):
        proving = self.exec_mode == 'PVS-client' and \
                  int(pvs_eval_and_wait("(is-checker-running)", 0))
        self.update_in_checker_status(proving)
        return proving

    def update_in_checker_status(self, proving):
        if proving:
            status_prompt(self.gui.prover_status,
                          text='Proving now', fg=colors['pos_lookup'])
        else:
            status_prompt(self.gui.prover_status,
                          text='Not proving', fg=colors['muted_red'])
        status_prompt(self.gui.status_msg, '')
        app_state['in_checker'] = proving

    def on_import_chain(self, theory='', imported=None, off=False):
        if imported == None and not off:
            imported = self.exec_mode == 'PVS-client' and \
                       int(pvs_eval_and_wait('(theory-on-import-chain "%s")'
                                             % theory, 0))
        if off:
            status_prompt(self.gui.import_status, text='-----', fg='black')
        elif imported:
            status_prompt(self.gui.import_status,
                          text='On import chain', fg=colors['pos_lookup'])
        else:
            status_prompt(self.gui.import_status,
                          text='Not imported', fg=colors['muted_red'])
        return imported

#-----------------------------------------
                       
# Queries initiated from the GUI interface start their processing here.
# Argument query is a sequence of four strings: name, refs, path, decl-type.

def submit_query(query, explicit_query=1):
    global cur_cli
    q_type = query_type(query)
    q_parsed, sql_query, results, q_time = \
        perform_query(query, q_type,
                      verbose_logging and explicit_query and query_log_file,
                      error_dialog_fn)
    if results == None: return 0         # error in query
    query_string, num_results = ' ; '.join(query), len(results)
    if explicit_query:
        emit_log_entry(main_log_file,
                       "Query terms '%s' resulted in %d matches." %
                       (query_string, num_results))
        app_state['client'].gui.query_history.insert(0, ('%04u' % num_results,)
                                           + tuple(query))
    if results == []:
        if explicit_query:
            status_prompt(app_state['client'].gui.status_msg,
                          'Query returned no matches (%.1f ms)'
                          % q_time, 'red')
            signal_empty_results()
        return 0
    status_prompt(app_state['client'].gui.status_msg,
                  'Query returned %s matches in %.1f ms'
                  % (len(results), q_time))
    query_cli = Query_Page(app_state['client'], query, q_type, results)
    cur_cli = query_cli   ### debug only
    query_cli.gui.post_query_results(query, q_parsed, results)
    return num_results
        
# When the query returns no results, flash the main query-entry backgrounds.

def signal_empty_results():
    panel = app_state['client'].gui.notebook_panel.canvas
    overlay = ColoredFrame(panel, borderwidth=10, color='gray')
    font_size = 48 if on_osx else 36
    Label(overlay, text='No\nMatches', padx=40, pady=30,
          font=(font_family['sans'], font_size), fg='gray',
          bg=colors['find_error_bg']).pack()   # pale pink
    overlay.place(relx=0.5, rely=0.3, anchor=CENTER)
    def reset_empty_alert():
        overlay.destroy()
    mainwindow.after(3000, reset_empty_alert)

# User requests to look up identifiers can come from Emacs buffers within PVS.
# Given an identifier and the cursor position within the string, try to find
# matching items in the database.  Try a hierarchy of object types, except when
# the string has form 'lib@thy', where the type can be determined immmediately.

def find_identifier_query(identifier, position):
    ident = identifier.strip()
    if not ident: return
    if '@' in ident:
        # library or theory selected when ident has form lib@thy
        sep_posn = ident.index('@')
        lib, thy = ident.split('@')
        if sep_posn < position:
            types, ident = ('module',), thy
        else:
            types, ident = ('library',), lib
    else:
        # normally search for declarations first, then other types,
        types = ('decl', 'proof', 'module', 'library')
    quoted_ident = '"%s"' % ident.strip()
    app_gui = app_state['client'].gui
    
    for result_type in types:
        search_terms = (quoted_ident, '', '', result_type)
        results = app_gui.invoke_query_handler(terms=search_terms,
					       explicit_query=0)
	if results: return
    status_prompt(app_gui.status_msg,
		  "No matches for '%s'." % ident, 'red')

# Primarily for regression testing: read a list of queries from designated
# file and submit them sequentially with a short delay between each pair.

def run_query_list(qfile, delay=8000):
    queries = file(qfile).readlines()
    nq = len(queries)
    running_msg = 'Running query %%d of %d ...' % nq
    def show_msg(n):
        status_prompt(app_state['client'].gui.status_msg, running_msg % n)
    for n, raw_q in enumerate(queries):
        q = split_and_pad_terms(raw_q.strip().strip("'"))
        mainwindow.after(delay*n, show_msg, n)
        mainwindow.after(delay*(n+1)-3000, submit_query, q)
    final = 'All %d queries should have completed.' % nq
    mainwindow.after(delay*nq,
                     lambda : user_dialog(showinfo, 'Run queries', final))
            

#-----------------------------------------

# Create main class instance for client and write session start-up
# information to the log file.  Make client object globally accessible
# through the dictionary app_state.

emit_log_header('Python Tk Client Main Log', main_log_file)  # sys.stdout)
emit_log_header('Python Tk Client Error Log', sys.stderr)

client = Hypatheon_client(mainwindow)

app_state['client'] = client
app_state['submit_query'] = submit_query
app_state['find_identifier_query'] = find_identifier_query
app_state['run_query_list'] = run_query_list

emit_log_entry(main_log_file,
               'New client session started.  Process ID = %s.' % os.getpid())

for action_msg in startup_actions:
    emit_log_entry(main_log_file, action_msg)
del startup_actions[:]

emit_log_entry(main_log_file, 'Collections found, newest databases:\n' +
               ''.join([ '%s (%s):\n  %s\n' % 
                         (c, time.asctime(
                                 time.localtime(os.path.getmtime(p))), p)
                         for c, p, v in collections ]))

if superseded_dbs:
    emit_log_entry(main_log_file, 'Superseded databases (not connected):\n' +
                   ''.join([ '%s (%s):\n  %s\n' % 
                             (c, time.asctime(time.localtime(d)), p)
                             for c, d, p, v in superseded_dbs ]))

status_prompt(app_state['client'].gui.exec_mode_status,
              '%s mode' % app_state['exec_mode'])
emit_log_entry(main_log_file, 'Running in %s mode.' % app_state['exec_mode'])

if app_state['exec_mode'] == 'PVS-client':
    app_state['pvs_version'] = pvs_eval_and_wait("(get-pvs-version)")
    app_state['long_pvs_version'] = \
        pvs_eval_and_wait("(get-long-pvs-version)").replace('<n>', '\n')
                   
emit_log_entry(main_log_file,
               'Version info:\n'
               'Hypatheon:  %s\n'
               'Python:  %s\n'
               'SQLite:  %s\n'
               'Pysqlite:  %s\n'
               'Tcl/Tk:  %s\n'
               'PVS:  %s\n' %
               (app_version, sys.version.split()[0],
                sqlite_version, pysqlite_version,
                root.tk.call('info', 'patchlevel'), get_pvs_version()) )

emit_log_entry(main_log_file,
               'Environment variables:\n%s' %
               ''.join([ '%s:  %s\n' % (evar, os.environ.get(evar, ''))
                         for evar in
                         ('PVSPATH', 'PVS_LIBRARY_PATH', 'HYPATHEON') ]))

if app_state['exec_mode'] == 'PVS-client':
    emit_log_entry(main_log_file,
                   'PVS version details:\n' + app_state['long_pvs_version'])
emit_log_entry(main_log_file, 'Base font size: %s' % base_font_size)
if using_ttk:
    tk_widget_package = 'ttk'
elif using_tile:
    tk_widget_package = 'Tile'
else:
    tk_widget_package = 'neither ttk nor Tile'
emit_log_entry(main_log_file, 'Tk widgets: using %s.' % tk_widget_package)


# Catch shutdown signal from PVS to exit gracefully.

def SIGHUP_handler(signum, frame):
    emit_log_entry(ops_log_file, 'Received shutdown signal (SIGHUP) from PVS.')
    emit_log_entry(main_log_file, 'Received shutdown signal (SIGHUP) from PVS.')
    sys.stdin.close()    # force PVS listener thread to terminate
    app_state['client'].app_exit()

signal.signal(signal.SIGHUP, SIGHUP_handler)


app_state['app_init'] = 1        # initialization phase is complete

mainwindow.mainloop()  # doesn't terminate until user closes main window

emit_log_entry(main_log_file, 'Client session terminated.')

# Force process to terminate to handle stubborn exit cases:

os.kill(os.getpid(), signal.SIGTERM)
