
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Menubar actions from the main application window are handled by
# functions in this module.


import os, sys, time, string, glob, re

from client_globals import *
from widget_utils   import *
from db_operations  import *

from indexing_manager import background_indexing

_excluded_libs_ = user_prefs.get('Indexing', 'excluded_libraries')
try:
    excluded_libraries = eval(_excluded_libs_)
except:      # syntax and semantics errors
    user_dialog(showerror, 'Excluded libraries for indexing',
                'The preference list of excluded libraries is malformed '
                'somehow. Edit the user preferences as needed.')
    excluded_libraries = []

helpDict = None     # help topics not loaded until needed

# ( Following procedures previously had been methods of class GUI_elements. )


def submit_problem_report():
    report_time = time.asctime(time.localtime()).replace(':', '.')
    report_path = os.path.join(log_dir, 'problem_report_%s.txt' %
                                        '-'.join(report_time.split()))
    report_file = open(report_path, 'w')
    print >> report_file, report_time
    print >> report_file, user_prefs.get('User', 'user_name')
    print >> report_file, user_prefs.get('User', 'user_email')
    print >> report_file, '\n=======\n\n'
    report_file.write(file(output_file).read())
    print >> report_file, '\n=======\n\n'
    report_file.write(file(error_file).read())
    print >> report_file, '\n=======\n\n'
    index_err = os.path.join(log_dir, indexing_err_log)
    if os.path.exists(index_err):
        report_file.write(file(index_err).read())
    else:
        report_file.write('File index_err_log has not been created.\n')
    report_file.close()

    def make_window(fr):
        Message(fr, aspect=600, text=display_messages['problem_reporting'],
                font=text_font).pack(padx=30, pady=10)
        output_entry = SunkenEntry(fr, width=60)
        output_entry.insert(END, report_path)
        output_entry.pack(padx=15, pady=10, fill=X, expand=YES)
        copy_btn = Button(fr, text='Copy Pathname to Clipboard',
                          command=lambda *ev: copy_text_clipboard(report_path))
        copy_btn.pack(pady=10)
        Message(fr, aspect=600, text=display_messages['reporting_thanks'],
                font=text_font).pack(padx=30, pady=10)
        button_row(fr, ((close_button_text, lambda :fr.destroy(), 0),)
                   )[0].pack(side=RIGHT, padx=30, pady=10)
        fr.bind('<Return>', lambda *args: fr.destroy())
    pop_up_toplevel_window(make_window, (), 'Submit Problem Report', set_grab=1)


# Users may change preferences by editing the preference file within a
# text widget. New preferences take effect during the next session.

def change_preferences():
    def add_buttons(fr):
        but_fr = Frame(fr)
	button_row(but_fr, (('Save Preferences', lambda : save_prefs(), but_fr),
			('Restore Defaults',
			 lambda : restore_defaults(), but_fr),
			('Cancel', lambda : top.destroy())),
		   'Prefs:', default=None)[0].pack(side=RIGHT, padx=30, pady=10)
        but_fr.pack(fill=X, side=BOTTOM)
    top, txt = scrolled_text_display(
		   title='Edit Preferences for Hypatheon Client',
		   button_proc=add_buttons, # tab_stops=('120','180'),
		   intro=display_messages['edit_prefs'], aspect=800,
		   width=80, height=40, set_grab=1,
		   font=small_fixed_font, return_frame=1)
    # top.bind('<Return>', lambda *args: top.destroy())
    top.geometry(window_geometry)
    def load_prefs(dir_name, file_name):
	try:
	    pref_file = open(os.path.join(dir_name, file_name))
	    lines = pref_file.readlines()
	    pref_file.close()
	except IOError:
	    lines = []           # OK for file to be missing
	for line in lines: txt.insert(END, line)
	txt.yview_moveto(0.0)
    def save_prefs():
	pref_file = open(os.path.join(config_dir,
				      'preferences.conf'), 'w')
	pref_file.writelines(txt.get(1.0, txt.index(END) + '- 1 chars'))
	pref_file.close()
	emit_log_entry(main_log_file, 'Preferences file updated.')
	top.destroy()
    def restore_defaults():
	txt.delete(1.0, END)
	load_prefs(config_dir, 'orig_prefs.conf')
    load_prefs(config_dir, 'preferences.conf')

# Allow user to recall previous queries in a listbox and choose one to redo.

def recall_previous_queries(gui, redo=1):
    if redo:
        instruction = 'Select one or more previous queries to resubmit.'
        mode, button_text = EXTENDED, 'Submit'
    else:
        instruction = 'Select a previous query to edit.'
        mode, button_text = SINGLE, 'Edit'

    def make_window(fr):
	Label(fr, text=instruction, fg='dark blue',
              font=text_font).pack(padx=10, pady=10)
	q_fr, qlist = scrolled_listbox(fr, width=50, height=20, selectmode=mode)
        fmt = '%s :  ' + ' ;'.join((' %s',) * len(gui.q_entries))
        for query in gui.query_history:
            qlist.insert(END, fmt % query)
        
        # When the Edit button is selected, fill the main query entries but
        # don't invoke.  When Submit is selected, invoke the query again.

        def edit_query(query_strings, linger=5):
            for ent, q_str in zip(gui.q_entries, query_strings):
                if q_str != None:
                    ent.delete(0, END)
                    ent.insert(END, q_str)

	def edit_submit_query(*args):
	    sel = qlist.curselection()
	    if not sel: 
                user_dialog(showerror, 'Select query for edit/resubmission',
                            'No query has been selected to edit/submit.')
                return
            fr.destroy()
            if redo:
                # items: [ (num, terms_1, terms_2, ...), ... ]
                for item in [ gui.query_history[i] for i in map(int, sel) ]:
                    gui.invoke_query_handler(terms=item[1:])
            else:
                edit_query(gui.query_history[int(sel[0])][1:])  # (terms_1,...)

        but_fr = Frame(fr)
	btn_fr_row, btn_list = \
            button_row(but_fr, ((button_text, edit_submit_query, but_fr),
                                ('Cancel', lambda : fr.destroy(), 0)),
                       size=1, default=1)
        btn_fr_row.pack(side=RIGHT, padx=20, pady=5)
        but_fr.pack(fill=X, side=BOTTOM)
        def activate_on_selection(event):
            btn_list[0]['default'] = ACTIVE
            btn_list[1]['default'] = NORMAL
            fr.bind('<Return>', edit_submit_query)
        qlist.bind('<Button-1>', EventHandler('Activate redo/edit button',
                                              activate_on_selection))
	fr.bind('<Return>', lambda *args: fr.destroy())
        q_fr.pack(padx=20, pady=10, fill=BOTH, expand=YES)
    pop_up_toplevel_window(make_window, (), 'Hypatheon Query Recall')


# Users may check the status of the database server.  A popup display
# showing a few statistics is provided in response.

def checkServerStatus(parent=None):
    def make_window(fr):
	Label(fr, text='Hypatheon Database Server',
	      font=heading_font).pack(pady=10)
	Label(fr, font=text_font,
	      text='Status for %s' % time.asctime()).pack(padx=30, pady=5)
        pid_pvs_version = 'PVS version:  %s        Process id:  %s' % \
                          (get_pvs_version(), os.getpid())
	Label(fr, font=text_font, text=pid_pvs_version).pack(padx=30, pady=2)
        Frame(fr).pack(pady=5)
        set_watch_cursor(1)
	status = getCollectionsStatus()
        set_watch_cursor(0)

	buttons = ((close_button_text, lambda : fr.destroy()),)
        but_fr = Frame(fr)
	button_row(but_fr, buttons)[0].pack(side=RIGHT, padx=20, pady=10)
	but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())

	if status:
            ncols = len(status)
	    fr2, cum_stats = \
		 build_table(fr,
                             (lambda w,t: Label(w, text=t),) +
                             (lambda w,n: Label(w, text=str(n)),) * ncols,
			     zip(status_display_types, *status),
			     (W,) + (E,) * ncols, padx=15, ymargin=5)
            fr2.config(relief=SOLID, bd=1)
	    fr2.pack(padx=30, pady=10)
	    emit_log_entry(main_log_file, 'Retrieved database status.')
	else:
	    Label(fr, font=text_font,
		  text='No databases are available.').pack(padx=30, pady=5)
    pop_up_toplevel_window(make_window, (), 'Database Status', parent=parent)

# Users may check the status of the indexed libraries.

def check_indexed_libraries():
    def make_window(fr):
	Label(fr, text='Libraries Indexed in Hypatheon Databases',
	      font=heading_font).pack(padx=30, pady=10)
        set_watch_cursor(1)
	status = getCollectionsLibraries()
        set_watch_cursor(0)

	buttons = ((close_button_text, lambda : fr.destroy()),)
        but_fr = Frame(fr)
	button_row(but_fr, buttons)[0].pack(side=RIGHT, padx=20, pady=10)
	but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())

	if status:
            display_types = [ '<bold>' + item for item in
                              ('', 'Collection', 'Version', 'Library',
                               'Theories', 'Last indexed') ]
            nrows = len(status) + 1
            num_column = [''] + range(1, nrows)
            ncols = len(display_types)
            numbered_rows = [ (i,) + row for i, row in
                              zip(range(1, nrows), status) ]
            status = transpose_lists(zip(display_types, *numbered_rows))

            def row_item_widget(parent, item):
                if isinstance(item, basestring) and item.startswith('<bold>'):
                    return Label(parent, text=str(item[6:]),
                                 font=bold_font, fg='dark blue')
                else:
                    return Label(parent, text=str(item))

            cfr = Frame(fr, relief=SOLID, bd=1)
            canv_wd = app_state['client'].gui.master.winfo_width() - 50
            canv_ht = min(30, max(12, 2 * nrows)) * 12
            canv = Canvas(cfr, relief=FLAT, width=canv_wd, height=canv_ht,
                          highlightthickness=0,
                          scrollregion=(0, 0, canv_wd, 24*nrows))
	    fr2, cum_stats = \
		 build_table(canv,
                             (row_item_widget,) * ncols,
			     status,
			     (E, W, W, W, E, W), padx=10, ymargin=5)
            canv.create_window(0, 0, window=fr2, anchor=NW)

            scroll = FlatScrollbar(cfr, command=canv.yview)
            canv.configure(yscrollcommand=scroll.set)
            canv.grid(row=0, column=0, sticky='news')
            cfr.rowconfigure(0, weight=1, minsize=0)
            scroll.grid(row=0, column=1, sticky='ns')
            cfr.columnconfigure(0, weight=1, minsize=0)
            cfr.columnconfigure(1, weight=0, minsize=0)
            if 0:  # horiz_scroll:
                hscroll = FlatScrollbar(cfr, command=canv.xview,
                                        orient=HORIZONTAL)
                canv.configure(xscrollcommand=hscroll.set)
                hscroll.grid(row=1, column=0, sticky='ew')
                cfr.rowconfigure(1, weight=0, minsize=0)
                mouse_wheel_bindings(fr, lambda *args: canv.yview(*args),
                                     lambda *args: canv.xview(*args))
            else:
                mouse_wheel_bindings(fr, lambda *args: canv.yview(*args))
	    cfr.pack(padx=20, pady=10, fill=BOTH, expand=YES)
            if on_osx: cfr.update_idletasks()   ### fix sluggish display
	    emit_log_entry(main_log_file, 'Retrieved library status.')
	else:
	    Label(fr, font=text_font,
		  text='No libraries are available.').pack(padx=30, pady=5)
    pop_up_toplevel_window(make_window, (), 'Hypatheon Library Status')


# Users may view a list of rogue files -- unindexed files whose theories
# are not imported by top.pvs in their respective libraries.

def view_rogue_files():
    def make_window(fr):
	Label(fr, text="Unindexed Theory Files (not imported by top.pvs)\n\n"
              "Unindexed Libraries (indicated by Theory File = ***)",
	      font=heading_font, padx=20).pack(pady=10)
        set_watch_cursor(1)
	status = getRogueFiles()[0]
        set_watch_cursor(0)

	buttons = ((close_button_text, lambda : fr.destroy()),)
        but_fr = Frame(fr)
	button_row(but_fr, buttons)[0].pack(side=RIGHT, padx=20, pady=10)
	but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())

	if status:
            def make_thy_rows(thy_status):
                return [ (i+1, s[0], s[1], time.asctime(time.localtime(s[2])))
                         for i, s in enumerate(thy_status) ]
            theories = status[:]
            display_types = [ '<bold>' + item for item in
                              ('', 'Library', 'Theory File', 'Last modified') ]
            nrows = len(status) + 1
            num_column = [''] + range(1, nrows)
            ncols = len(display_types)
            numbered_rows = make_thy_rows(status)
            status = transpose_lists(zip(display_types, *numbered_rows))
            hdr_widgets = []
            
            def row_item_widget(parent, item):
                if isinstance(item, basestring) and item.startswith('<bold>'):
                    widget = Label(parent, text=str(item[6:]),
                                   font=bold_font, fg='dark blue')
                    hdr_widgets.append(widget)
                    return widget
                else:
                    return Label(parent, text=str(item))

            cfr = Frame(fr, relief=SOLID, bd=1)
            canv_wd, canv_ht = 600, min(30, max(12, 2 * nrows)) * 12
            canv = Canvas(cfr, relief=FLAT, width=canv_wd, height=canv_ht,
                          highlightthickness=0,
                          scrollregion=(0, 0, canv_wd, 24*nrows))
	    fr2, widget_rows = \
		 build_table(canv, (row_item_widget,) * ncols,
			     status, (E, W, W, W), padx=10, ymargin=5)
            canv.create_window(0, 0, window=fr2, anchor=NW)
            del widget_rows[0]

            def reorder_rows(col):
                theories.sort(key=lambda a: a[col])
                numbered_rows = make_thy_rows(theories)
                for thy_row, widgets in zip(numbered_rows, widget_rows):
                    for col_text, col_widget in zip(thy_row[1:], widgets[1:]):
                        col_widget.config(text=str(col_text))
            for col, w in enumerate(hdr_widgets[1:]):
                w.bind('<Button-1>',
                       EventHandler('Reordering unindexed file rows',
                                    lambda event, col=col: reorder_rows(col)))

            scroll = FlatScrollbar(cfr, command=canv.yview)
            canv.configure(yscrollcommand=scroll.set)
            canv.grid(row=0, column=0, sticky='news')
            cfr.rowconfigure(0, weight=1, minsize=0)
            scroll.grid(row=0, column=1, sticky='ns')
            cfr.columnconfigure(0, weight=1, minsize=0)
            cfr.columnconfigure(1, weight=0, minsize=0)
            mouse_wheel_bindings(fr, lambda *args: canv.yview(*args))
	    cfr.pack(padx=20, pady=10, fill=BOTH, expand=YES)
            if on_osx: cfr.update_idletasks()   ### fix sluggish display
            Label(fr, text='Click on a heading to change the sort column.',
                  font=text_font, fg='dark blue').pack(pady=5)
	    emit_log_entry(main_log_file, 'Retrieved unindexed file list.')
	else:
	    Label(fr, font=text_font,
		  text='No unindexed files were found.').pack(padx=30, pady=20)
    pop_up_toplevel_window(make_window, (),
                           'Unindexed Theory Files and Libraries')


# Users may view a list of theories whose files have dissimilar names.

def view_theory_file_mapping():
    def make_window(fr):
	Label(fr, text="Theories Having Names Different From Their Files",
	      font=heading_font, padx=20).pack(pady=20)
        set_watch_cursor(1)
	status = getRogueFiles()[1]
        set_watch_cursor(0)

	buttons = ((close_button_text, lambda : fr.destroy()),)
        but_fr = Frame(fr)
	button_row(but_fr, buttons)[0].pack(side=RIGHT, padx=20, pady=10)
	but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())

	if status:
            def make_thy_rows(thy_status):
                return [ (i+1, s[0], s[1], s[2])
                         for i, s in enumerate(thy_status) ]
            theories = status[:]
            display_types = [ '<bold>' + item for item in
                              ('', 'Library', 'Theory', 'File') ]
            nrows = len(status) + 1
            num_column = [''] + range(1, nrows)
            ncols = len(display_types)
            numbered_rows = make_thy_rows(status)
            status = transpose_lists(zip(display_types, *numbered_rows))
            hdr_widgets = []
            
            def row_item_widget(parent, item):
                if isinstance(item, basestring) and item.startswith('<bold>'):
                    widget = Label(parent, text=str(item[6:]),
                                   font=bold_font, fg='dark blue')
                    hdr_widgets.append(widget)
                    return widget
                else:
                    return Label(parent, text=str(item))

            cfr = Frame(fr, relief=SOLID, bd=1)
            canv_wd, canv_ht = 600, min(30, max(12, 2 * nrows)) * 12
            canv = Canvas(cfr, relief=FLAT, width=canv_wd, height=canv_ht,
                          highlightthickness=0,
                          scrollregion=(0, 0, canv_wd, 24*nrows))
	    fr2, widget_rows = \
		 build_table(canv, (row_item_widget,) * ncols,
			     status, (E, W, W, W), padx=10, ymargin=5)
            canv.create_window(0, 0, window=fr2, anchor=NW)
            del widget_rows[0]

            scroll = FlatScrollbar(cfr, command=canv.yview)
            canv.configure(yscrollcommand=scroll.set)
            canv.grid(row=0, column=0, sticky='news')
            cfr.rowconfigure(0, weight=1, minsize=0)
            scroll.grid(row=0, column=1, sticky='ns')
            cfr.columnconfigure(0, weight=1, minsize=0)
            cfr.columnconfigure(1, weight=0, minsize=0)
            mouse_wheel_bindings(fr, lambda *args: canv.yview(*args))
	    cfr.pack(padx=20, pady=10, fill=BOTH, expand=YES)
            if on_osx: cfr.update_idletasks()   ### fix sluggish display
	    emit_log_entry(main_log_file,
                           'Retrieved dissimilar theory-file list.')
	else:
            none_found = 'There are no dissimilar theory-file pairs.'
	    Label(fr, font=text_font, text=none_found).pack(padx=30, pady=20)
    pop_up_toplevel_window(make_window, (),
                           'Mapping Between Theory and File Names')


# Show list of error and warning messages in a separate window.
# Position at end of list (most recent).

def show_message_list():
    def clear_all():
	txt['state'] = NORMAL
	reset_user_message_log()
	txt.delete(1.0, END)
	txt['state'] = DISABLED
    def show_all():
	txt['state'] = NORMAL
	txt.delete(1.0, END)
	for v in user_message_log: txt.insert(END, v)
	txt.insert(END, 'Total of %d entries\n' % len(user_message_log))
	txt.yview_moveto(1.0)
	txt['state'] = DISABLED
    def close_msg_list(*args):
	top.destroy()
    def add_buttons(fr):
	buttons = ((close_button_text, lambda : close_msg_list()),
		   ('Refresh', lambda : show_all()),
		   ('Clear List', lambda : clear_all()))
	but_fr, widgets = button_row(fr, buttons)
	but_fr.pack(side=BOTTOM, fill=X, padx=30, pady=10)
    top, txt = scrolled_text_display(
		   title='Recent Hypatheon Messages',
		   button_proc=add_buttons,
		   return_frame=1)
    top.bind('<Return>', close_msg_list)
    top.protocol('WM_DELETE_WINDOW', close_msg_list)
    top.geometry(window_geometry)
    show_all()

# Background indexing is initiated here but the main work is performed
# by module indexing_manager.

def index_selected_libs():
    # existing lists each library for each database in which it appears
    existing = [ n[0] for n in do_query("select name from libraries") ]
    collec_existing = []    # only those for selected collection
    
    def make_window(fr):
        Label(fr, font=text_font,
              text='First, choose a library collection and its database.'
              ).pack(padx=10, pady=5)
	but_fr = Frame(fr)
        row_fr, bottom_buttons = \
            button_row(but_fr,
                       (('Start Indexing Now', null_proc, but_fr),
                        ('Schedule Periodic Indexing', null_proc, but_fr),
                        ('Cancel', lambda : fr.destroy(), 0)),
                       size=1, default=2)
        row_fr.pack(side=RIGHT, padx=20, pady=10)
        but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())
        coll_box = create_collection_listbox(fr)

 	Message(fr, aspect=1000, font=text_font, 
                text='Next, choose a library source from locations in '
                     'PVS_LIBRARY_PATH or '
                     'the core PVS directories.').pack(padx=10, pady=5)
	all_libs = collect_library_names() + [ ('prelude', ['prelude']) ]
	lbox1 = Listbox(fr, height=len(all_libs), width=60,
			background=colors['text_bg_color'],
			exportselection=0, highlightthickness=0)
	for dir, libs in all_libs:
	    lbox1.insert(END, dir)
	lbox1.selection_set(0)

	def dir_index():
	    sel = lbox1.curselection()
	    if sel: return int(sel[0])
	    return 0
	lfr2, lbox2 = scrolled_listbox(fr, selectmode=EXTENDED)
	def populate_libs(y=None, coll_id=None):
            if coll_id == None:
                coll_id = int((coll_box.curselection() or (0,))[0])
            collec_existing[:] = \
                [ n[0] for n in
                  query_some("select name from libraries", coll_id) ]
            if y == None:
                index =  int((lbox1.curselection() or (0,))[0])
            else:
                index = lbox1.nearest(y)
	    if index < 0:
		index = 0
		lbox1.selection_set(0)
            lbox2.delete(0, END)
	    for lib in all_libs[index][1]:
		lbox2.insert(END, lib)
                if lib in excluded_libraries:
                    lbox2.itemconfigure(END, fg='orange',
                                        selectforeground='orange')
                elif lib in collec_existing:
                    lbox2.itemconfigure(END, fg='blue', selectforeground='blue')
                elif lib in existing:   # in another collection -- forbidden
                    lbox2.itemconfigure(END, fg='red4', selectforeground='red4')
                    # lbox2.itemconfigure(END, state=DISABLED)
	    set_scrollbars_top(lbox2)
	lbox1.bind('<Button-1>',
                   EventHandler('Populate libs (indexing)',
                                lambda event: populate_libs(event.y), fr))

	def select_collection(y):
	    coll_id = coll_box.nearest(y)
	    if coll_id < 0:
		coll_id = 0
		coll_box.selection_set(0)
            populate_libs(None, coll_id)
	coll_box.bind('<Button-1>',
                      EventHandler('Select collection (indexing)',
                                   lambda event: select_collection(event.y), fr))
        if collections: select_collection(0)

	def select_new():
	    new_libs = [ lib for lib in all_libs[dir_index()][1]
			 if lib not in existing and 
                            lib not in excluded_libraries ]
	    lbox2.selection_clear(0, END)
	    for lib in new_libs:
		lbox2.selection_set(all_libs[dir_index()][1].index(lib))
            activate_on_selection()
	def select_indexed():
	    lbox2.selection_clear(0, END)
	    for lib in collec_existing:
                if lib in excluded_libraries: continue
		try:
		    lbox2.selection_set(all_libs[dir_index()][1].index(lib))
		except ValueError:
		    pass   # library not in this subset	
            activate_on_selection()
	def select_all():
	    lbox2.selection_set(0, END)
            lib_group = all_libs[dir_index()][1]
	    for lib in lib_group:
                if lib in excluded_libraries or \
                    lib in existing and lib not in collec_existing:
		    lbox2.selection_clear(lib_group.index(lib))
            activate_on_selection()
	lbox1.pack(padx=20, pady=10)

	Message(fr, aspect=450, text=display_messages['index_libraries'],
		font=text_font).pack(padx=10, pady=8)
	Message(fr, aspect=1000,
                text=display_messages['lib_convention_reminder'],
		font=text_font).pack(padx=10, pady=0)
        Frame(fr).pack(pady=4)
	button_row(fr, (('Select All', select_all, fr),
			('Select New', select_new, fr),
			('Select Indexed', select_indexed, fr)),
		   size=1, default=None)[0].pack(pady=5)
	lfr2.pack(padx=10, pady=15, fill=Y, expand=YES)
	if collections: populate_libs(0)

	def form_lib_list():
	    selected = [ all_libs[dir_index()][1][int(i)]
			 for i in lbox2.curselection() ]
            if selected:
                return '"%s"' % ' '.join(selected)
            else:
                user_dialog(showerror, 'Select libraries for indexing',
                            'No libraries have been selected for indexing.')
                return None
        def apply_indexing_fn(indexing_fn):
            sel_coll_box = coll_box.curselection()
            if not sel_coll_box:
                user_dialog(showerror, 'Select collection for indexing',
                            'No collection/database has been selected '
                            'for indexing.')
                return
            selected_libs = form_lib_list()
            if selected_libs:
                sel_coll = sel_coll_box[0]
                collec_name, db_path, db_vers = collections[int(sel_coll)]
                indexing_fn(collec_name, db_vers, selected_libs)
#                fr.after(1, lambda : indexing_fn(collec_name, db_vers,
#                                                 selected_libs))
	def index_libs(*args):
            apply_indexing_fn(
                lambda collec_name, db_vers, selected_libs:
                    background_indexing(fr, collec_name, db_vers,
                                        selected_libs, 0, 0, 0,
                                        status_fn=checkServerStatus))
	def create_entry():
            apply_indexing_fn(lambda collec_name, db_vers, selected_libs:
                                  create_crontab_entry(fr, collec_name,
                                                       db_vers, selected_libs))
        def activate_on_selection(*args):
            bottom_buttons[0]['default'] = ACTIVE
            bottom_buttons[2]['default'] = NORMAL
            fr.bind('<Return>', index_libs)
        lbox2.bind('<Button-1>', EventHandler('Activate indexing button',
                                              activate_on_selection))

	Message(fr, aspect=600, text=display_messages['library_selection_note'],
		font=text_font).pack(padx=10, pady=5)
        bottom_buttons[0].config(command=index_libs)
        bottom_buttons[1].config(command=create_entry)
    pop_up_toplevel_window(make_window, (), 'Hypatheon Library Indexing',
                           set_grab=1)

# Index libraries found in a manifest file having name '*.all'.  Each library
# name is extracted as the first identifier on a line in the file.

def index_library_grouping():
    existing = [ n[0] for n in do_query("select name from libraries") ]
    collec_existing = []
    def make_window(fr):
        Label(fr, font=text_font,
              text='First, choose a library collection and its database.'
              ).pack(padx=10, pady=5)
	but_fr = Frame(fr)
        row_fr, bottom_buttons = \
            button_row(but_fr,
                       (('Start Indexing Now', null_proc, but_fr),
                        ('Schedule Periodic Indexing', null_proc, but_fr),
                        ('Cancel', lambda : fr.destroy(), 0)),
                       size=1, default=2)
        row_fr.pack(side=RIGHT, padx=20, pady=10)
        but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())
        coll_box = create_collection_listbox(fr)

 	Label(fr, font=text_font, 
              text='Next, choose a library manifest file from locations in '
                   'PVS_LIBRARY_PATH.').pack(padx=10, pady=5)
	all_libs = collect_library_names() + [ ('prelude', ['prelude']) ]
	lbox1 = Listbox(fr, height=len(all_libs), width=60,
			background=colors['text_bg_color'],
			exportselection=0, highlightthickness=0)
        mpaths = []
	for dir in all_lib_paths[:-1]:
            mpaths.extend(glob.glob(os.path.join(dir, '*.all')))
        for path in mpaths:
	    lbox1.insert(END, path)
	lbox1.selection_set(0)
	lbox1.pack(padx=20, pady=10)

	Message(fr, aspect=400, text=display_messages['index_grouping'],
		font=text_font).pack(padx=20, pady=8)
	Message(fr, aspect=1000,
                text=display_messages['lib_convention_reminder'],
		font=text_font).pack(padx=10, pady=0)
        Frame(fr).pack(pady=4)
	def find_manifest():
	    selected = lbox1.curselection()
            if selected:
                return '"%s"' % mpaths[int(selected[0])]
            else:
                user_dialog(showerror, 'Select manifest for indexing',
                            'No manifest has been selected for indexing.')
                return None
        def apply_indexing_fn(indexing_fn):
            sel_coll_box = coll_box.curselection()
            if not sel_coll_box:
                user_dialog(showerror, 'Select collection for indexing',
                            'No collection/database has been selected '
                            'for indexing.')
                return
            manifest = find_manifest()
            if manifest:
                sel_coll = sel_coll_box[0]
                collec_name, db_path, db_vers = collections[int(sel_coll)]
                indexing_fn(collec_name, db_vers, manifest)
	def index_libs():
            apply_indexing_fn(
                lambda collec_name, db_vers, manifest:
                    background_indexing(fr, collec_name, db_vers,
                                        manifest, 0, 0, 0, 1,
                                        status_fn=checkServerStatus))
	def create_entry():
            apply_indexing_fn(lambda collec_name, db_vers, manifest:
                                  create_crontab_entry(fr, collec_name,
                                                       db_vers, manifest, 1))
        bottom_buttons[0].config(command=index_libs)
        bottom_buttons[1].config(command=create_entry)
    pop_up_toplevel_window(make_window, (), 'Hypatheon Library Indexing',
                           set_grab=1)

def create_collection_listbox(fr):
    coll_box = Listbox(fr, height=len(collections), width=60,
                       background=colors['text_bg_color'],
                       exportselection=0, highlightthickness=0)
    selectable = []
    for index, db_data in enumerate(collections):
        name, db_path, db_vers = db_data
        basename = os.path.basename(db_path)
        coll_box.insert(END, '%s :   .../%s' % (name, basename))
        if 'core' in name or 'nasalib' in name:
            coll_box.itemconfigure(END, fg='red4', selectforeground='red4')
        else:
            selectable.append(index)
    if selectable:
        coll_box.selection_set(selectable[0])
    coll_box.pack(padx=20, pady=10)
    return coll_box

def create_crontab_entry(prev_fr, collec_name, db_vers,
                         selected_libs, ordered=0):
    prev_fr.destroy()
    def make_window(fr):
	Message(fr, aspect=300, text=display_messages['schedule_indexing'],
		font=text_font).pack(padx=30, pady=10)
        if PVS_LIBRARY_PATH:
            pvs_lib_path = 'PVS_LIBRARY_PATH="%s"' % PVS_LIBRARY_PATH
        else:
            pvs_lib_path = ''
        command = '%s index 0 0 0 0 %s 2>> "%s"' % \
            ( ' '.join(('HYPATHEON="%s"' % hypatheon_dir,
                        'PVSPATH="%s"' % pvs_path,
                        pvs_lib_path,
                        os.path.join(sys.prefix, 'bin/python'),
                        '"%s"' % os.path.join(bin_dir, 'run_indexer'),
                        collec_name, '"%s"' % db_vers, selected_libs)),
              ordered, os.path.join(log_dir, indexing_err_log) )
        crontab_entry = ('# Hypatheon periodic batch indexing:\n' 
                         '15 3 * * * %s\n') % command
	Message(fr, aspect=400, text=crontab_entry, relief=SOLID,
		font=text_font).pack(padx=30, pady=15)
	Message(fr, aspect=1200, text=display_messages['indexing_command'],
		font=text_font).pack(padx=30, pady=10)

	def copy_crontab():
	    copy_text_clipboard(crontab_entry)
            fr.destroy()
	def copy_command():
	    copy_text_clipboard(command)
            fr.destroy()
        ### move to front and pack at bottom?
        but_fr, buttons = \
            button_row(fr, (('Copy Indexing Command', copy_command, fr),
                            ('Copy Crontab Entry', copy_crontab, fr),
                            ('Cancel', lambda : fr.destroy(), 0)),
                       size=1, default=1)
        Frame(but_fr).pack(fill=X)
        but_fr.pack(padx=20, pady=10)
	fr.bind('<Return>', lambda *args: fr.destroy())
    pop_up_toplevel_window(make_window, (), 'Hypatheon Scheduled Indexing')

# Background library deletion is initiated here but the main work is
# performed by module indexing_services.

def delete_selected_libs():
    existing = do_query("select name from libraries")
    existing_libs = [ t[0] for t in existing ]
    def collec_vers(collec_id):
        name, path, vers = collections[collec_id]
        if vers: return name + ' ' + vers
        else:    return name
    existing_pairs = [ (collec_vers(t[1]), t[0]) for t in existing ]

    def make_window(fr):
 	Message(fr, aspect=1000, font=text_font, 
                text='Choose from locations in PVS_LIBRARY_PATH or '
                     'the core PVS directories.').pack(padx=10, pady=5)
	but_fr = Frame(fr)
        row_fr, bottom_buttons = \
            button_row(but_fr, (('Start Deletion', null_proc, but_fr),
                                ('Cancel', lambda : fr.destroy(), 0)),
                       size=1, default=1)
        row_fr.pack(side=RIGHT, padx=20, pady=10)
        but_fr.pack(fill=X, side=BOTTOM)
	fr.bind('<Return>', lambda *args: fr.destroy())

	all_libs = collect_library_names() + [ ('prelude', ['prelude']) ]
        indexed_libs = []
        for d, libs in all_libs:
            indexed_libs.append((d, [ pair for pair in existing_pairs
                                      if pair[1] in libs ]))
	lbox1 = Listbox(fr, height=len(indexed_libs), width=40,
			background=colors['text_bg_color'],
			exportselection=0, highlightthickness=0)
	for dir, libs in indexed_libs:
	    lbox1.insert(END, dir)
	lbox1.selection_set(0)

	def dir_index():
	    sel = lbox1.curselection()
	    if sel: return int(sel[0])
	    return 0
	lfr2, lbox2 = scrolled_listbox(fr, selectmode=EXTENDED)
	def populate_libs(y):
	    index = lbox1.nearest(y)
	    if index < 0:
		index = 0
		lbox1.selection_set(0)
            lbox2.delete(0, END)
	    for collec, lib in indexed_libs[index][1]:
		lbox2.insert(END, '[%s]  %s' % (collec, lib))
                lbox2.itemconfigure(END, fg='blue', selectforeground='blue')
	    set_scrollbars_top(lbox2)
	lbox1.bind('<Button-1>',
                   EventHandler('Populate libs (deletion)',
                                lambda event: populate_libs(event.y), fr))
	lbox1.pack(padx=20, pady=10)

	Message(fr, aspect=700, text=display_messages['delete_libraries'],
		font=text_font).pack(padx=20, pady=10)
	button_row(fr, (('Select All',
			 lambda : lbox2.selection_set(0, END), fr), ),
		   size=1, default=None)[0].pack(pady=5)
	lfr2.pack(padx=10, pady=10, fill=Y, expand=YES)
        if collections: populate_libs(0)

        vacuum_var = BooleanVar()
        # vacuum_var.set(0)  # should start False
        Checkbutton(fr, text='Vacuum database(s) after deletion',
                    variable=vacuum_var).pack(padx=5, pady=10)
	Message(fr, aspect=600, text=display_messages['vacuum_database'],
		font=text_font).pack(padx=20, pady=5)

	def form_lib_list():
	    selected = [ indexed_libs[dir_index()][1][int(i)]
			 for i in lbox2.curselection() ]
            if selected:
                return selected
            else:
                user_dialog(showerror, 'Select libraries for deletion',
                            'No libraries have been selected for deletion.')
                return None
	def delete_libs():
            selected_libs = form_lib_list()
            if not selected_libs: return
            lib_dict = {}
            for collec, lib in selected_libs:
                if collec in lib_dict: lib_dict[collec].append(lib)
                else:                  lib_dict[collec] = [lib]
            if int(vacuum_var.get()): action = 'delete_vacuum'
            else:                     action = 'delete'
            for collec_name_vers, lib_names in lib_dict.items():
                collec_name, db_vers = (collec_name_vers.split() + [''])[:2]
                cmd_args = ['nice',
                            '"%s"' % os.path.join(bin_dir, 'run_indexer'),
                            collec_name, '"%s"' % db_vers,
                            '"%s"' % ' '.join(lib_names), action, '0',
                            '1']   ### set notify only to indicate client mode
                delete_cmd = \
                    '%s 2>> "%s"' % (' '.join(cmd_args),
                                   os.path.join(log_dir, indexing_err_log))
                # wait for completion:
                exit_code = subprocess.call(delete_cmd, shell=True)
                if exit_code:
                    user_dialog(showerror,
                                *error_messages['lib_deletion_error'])
                    fr.destroy()
                    return
            sel_lib_names = ', '.join([ p[1] for p in selected_libs ])
            close_current_query_pages(
                'Delete libraries',
                "Libraries '%s' were deleted from the database."
                % sel_lib_names,
                'library deletion')
#            user_dialog(showinfo, 'Delete libraries',
#                        "Libraries '%s' were deleted from the database."
#                        % sel_lib_names)
            emit_log_entry(main_log_file,
                           "Libraries '%s' were deleted from the database."
                           % sel_lib_names)
            status_prompt(app_state['client'].gui.status_msg,
                          'Deleted libraries')
            fr.destroy()
        bottom_buttons[0].config(command=EventHandler('Deletion command',
                                                      delete_libs, fr))
    pop_up_toplevel_window(make_window, (), 'Hypatheon Library Deletion',
                           set_grab=1)


# Close currently open query pages after destructive actions,
# then display user dialog with action-specific message.

def close_current_query_pages(action_name, action_message, short_name):
    app_state['client'].gui.notebook_panel.delete_tabbed_pages()
    user_dialog(showinfo, action_name,
                "%s\n\nAll currently open query pages are being closed "
                "because %s can invalidate cached information. "
                "If desired, you can use the Edit menu item "
                "Redo Previous Queries to recall recently invoked queries."
                % (action_message, short_name))

    
# Regenerate and display library dependencies for selected collection.

def display_library_dependencies():
    def make_window(fr):
 	Message(fr, aspect=1000, font=text_font, 
                text='Choose from locations in PVS_LIBRARY_PATH or '
                     'the PVS lib directory.').pack(padx=10, pady=5)
	all_libs = collect_library_names()
	lbox1 = Listbox(fr, height=len(all_libs), width=40,
			background=colors['text_bg_color'],
			exportselection=0, highlightthickness=0)
        dir_list = [ dir for dir, libs in all_libs ]
	for dir in dir_list:
	    lbox1.insert(END, dir)
	lbox1.selection_set(0)
	lbox1.pack(padx=30, pady=10)
 	Message(fr, text=display_messages['lib_deps_refresh'],
                aspect=500, font=text_font ).pack(padx=10, pady=5)
        deps_info = []   # to be filled with dir name, deps file name

	def display_lib_info():
            view_log_file('Library Dependencies for %s' % dir, deps_info[1],
                          init_pos=1.0, font=fixed_text_font)
            fr.destroy()
	def refresh_lib_info():
            set_watch_cursor(1)
            # assume deps_info has already by set by listbox selection
            dir = deps_info[0]
            # regenerate the dependencies file using a script
            cmd = 'cd "%s"; "%s" > "%s"' % \
                (dir, os.path.join(bin_dir, 'lib_deps'), deps_info[1])
            os_system(cmd, redirect=1)
            set_watch_cursor(0)
            display_lib_info()

        Frame(fr).pack(fill=Y, expand=YES)
	button_fr, buttons = \
            button_row(fr, (('Display', display_lib_info, fr),
                            ('Refresh', refresh_lib_info, fr),
                            ('Cancel', lambda : fr.destroy(), 0)), size = 1)
        button_fr.pack(side=RIGHT, padx=20, pady=10)

        # dependency data needs to be found after user selects a directory
        def check_for_deps(y):
	    index = lbox1.nearest(y)
	    if index < 0:
		index = 0
		lbox1.selection_set(0)
            dir = dir_list[index]
            deps_file = os.path.join(dir, 'dependencies.txt')
            deps_exist = os.path.exists(deps_file)
            if deps_exist:
                default_action, default_button = display_lib_info, 0
                buttons[0]['state'] = NORMAL
            else:
                default_action, default_button = refresh_lib_info, 1
                buttons[0]['state'] = DISABLED
            fr.bind('<Return>',
                    EventHandler('Dep check default action',
                                 lambda *args: default_action(), fr))
            buttons[1 - default_button]['default'] = NORMAL
            buttons[default_button]['default'] = ACTIVE
            deps_info[:] = [dir, deps_file]   # for use by button handlers

        check_for_deps(0)
	lbox1.bind('<Button-1>',
                   EventHandler('Check for deps',
                                lambda event: check_for_deps(event.y), fr))

    pop_up_toplevel_window(make_window, (), 'PVS Library Dependencies',
                           set_grab=1)


# Clearing, deleting and creating databases is handled by a user dialog.

def manage_databases():
    def make_window(fr):
        Label(fr, font=text_font,
              text='Select a database file to be cleared or deleted.'
              ).pack(padx=10, pady=5)
        coll_box = create_collection_listbox(fr)

        def show_status_close():
            fr.destroy()
            checkServerStatus()
        def removal_confirmed(collec_name):
            title, message = dialog_messages['confirm_db_removal']
            return user_dialog(askokcancel, title, message % collec_name)
        def clear_delete_db(deletion):
            collec_id = int((coll_box.curselection() or (0,))[0])
            collec_name, db_path, db_vers = collections[collec_id]
            if not removal_confirmed(collec_name): return
            if deletion:
                close_db_connection(collec_id)
                os.remove(db_path)
                msg = "The database for collection '%s' was deleted."
                action = 'database deletion'
            else:
                empty_database(collec_id)
                msg = "The database for collection '%s' was cleared." \
                      " It is now empty."
                action = 'database erasure'
            emit_log_entry(main_log_file, msg % collec_name)
            close_current_query_pages(
                'Clear/delete database', msg % collec_name, action)
            show_status_close()

        Message(fr, aspect=600, text=display_messages['clear_database'],
                font=text_font).pack(padx=30, pady=10)
	button_row(fr, (('Delete Database', lambda : clear_delete_db(1), fr),
                        ('Clear Database',  lambda : clear_delete_db(0), fr)),
		   size=1, default=None)[0].pack(pady=5)

# When superseded database files exist, offer the user a chance to delete them.
# First check if they still exist.

        db_items = [ db for db in superseded_dbs if os.path.exists(db[2]) ]
        def ss_removal_confirmed():
            title, message = dialog_messages['confirm_ss_removal']
            return user_dialog(askokcancel, title, message % len(db_items))
        if db_items:
            Frame(fr, height=2, bg='gray50', bd=0, width=500
                  ).pack(pady=15)  # , fill=X, expand=YES)
            Label(fr, font=text_font,
                  text='Superseded database files have been found.'
                  ).pack(padx=10, pady=5)
            Message(fr, aspect=1000, text=display_messages['delete_superseded'],
                    font=text_font).pack(padx=30, pady=5)
            s_list = [ '%s  :  %s' % (coll, vers)
                       for coll, t, p, vers in db_items ]
            s_list.sort()
            Message(fr, aspect=400, text='\n'.join(s_list),
                    font=text_font).pack(padx=30, pady=0)
            Frame(fr).pack(pady=5)
            def delete_superseded():
                if not ss_removal_confirmed(): return
                for c, t, path, v in db_items:
                    try:
                        emit_log_entry(main_log_file,
                                       'Deleting database file %s' % path)
                        os.remove(path)
                    except OSError:
                        pass   # OK if nonexistent
                del_msg = '%d old database files were deleted.' % len(db_items)
                emit_log_entry(main_log_file, del_msg)
                user_dialog(showinfo, 'Delete databases', del_msg)
                del superseded_dbs[:]
                fr.destroy()
            button_row(fr, (('Delete Superseded Databases',
                             lambda : delete_superseded(), fr),),
                       size=1, default=None)[0].pack(pady=5)

# New database creation can copy from subdirectory ../data/base.
# Include a PVS core database by default.

        Frame(fr, height=2, bg='gray50', bd=0, width=500
              ).pack(pady=15)  # , fill=X, expand=YES)
        Label(fr, font=text_font,
              text='Select a destination directory for the new database file.'
              ).pack(padx=10, pady=5)
        dest_box = Listbox(fr, height=1+len(pvs_library_path), width=60,
                           background=colors['text_bg_color'],
                           exportselection=0, highlightthickness=0)
        for path in [data_dir] + pvs_library_path:
            dest_box.insert(END, path)
        dest_box.selection_set(0)
        dest_box.pack(padx=10, pady=10)

        base_paths = glob.glob(os.path.join(data_dir, 'base', '*'))
        base_candidates = []
        for db_path in base_paths:
            basename = os.path.basename(db_path)
            match = db_regexp_pattern.match(basename)
            if match:
                coll, version = match.groups()
                base_candidates.append((db_path, coll, version))
        if base_candidates:
            Label(fr, font=text_font,
                  text='Select a source database file if copying is desired.'
                  ).pack(padx=10, pady=5)
            copy_box = Listbox(fr, height=len(base_candidates), width=40,
                               background=colors['text_bg_color'],
                               exportselection=0, highlightthickness=0)
            for db_path, coll, version in base_candidates:
                copy_box.insert(END, '%s:  .../base/%s' %
                                (coll, os.path.basename(db_path)))
            copy_box.selection_set(0)
            copy_box.pack(padx=10, pady=10)
            aspect, intro_key = 300, 'create_database_copy'
        else:
            aspect, intro_key = 500, 'create_database_empty'
        intro_text = display_messages['create_database'] + \
                     display_messages[intro_key]
        Message(fr, aspect=aspect, text=intro_text,
                font=text_font).pack(padx=30, pady=10)
        create_fr = Frame(fr)
        Label(create_fr, text='Collection: ').pack(side=LEFT)
        name_entry = entry_widget(create_fr, width=16)
        name_entry.pack(side=LEFT)
        Label(create_fr, text='   Version: ').pack(side=LEFT)
        version_entry = entry_widget(create_fr, width=10)
        version_entry.pack(side=LEFT)
        create_fr.pack(padx=20, pady=10)

        # try to create a suggested version number for the collection from
        # the PVS version and the user's revision control script
        pvs_version = get_pvs_version()
        script = user_prefs.get('System', 'version_script')
        if script and pvs_version and pvs_version[0].isdigit():
            for p in all_lib_paths:
                collec_vers = os_command_output('cd "%s"; "%s"' %
                                                (p, script)).strip()
                if collec_vers and collec_vers[0].isdigit():
                    version_entry.insert(END, '%s-%s' %
                                              (pvs_version, collec_vers))
                    break

        def create_db(copy_db):
            collec_name = name_entry.get()
            collec_vers = version_entry.get()
            if not collec_name.isalnum():
                user_dialog(showerror, 'Database creation',
                            'Collection name must be an alphanumeric string.')
                return
            sel = dest_box.curselection()
            if not sel:
                user_dialog(showerror, 'Database creation',
                            'A destination directory has not been selected.')
                return
            dest_dir = dest_box.get(int(sel[0]))
            if copy_db:
                sel = copy_box.curselection()
                if not sel:
                    user_dialog(showerror, 'Database creation',
                                'An existing database has not been selected.')
                    return
                copied_path = base_candidates[int(sel[0])][0]
            else:
                copied_path = empty_db_path
            new_db_path = add_database(collec_name, collec_vers,
                                       copied_path, dest_dir)
            if not new_db_path:
                user_dialog(showerror, 'Database creation',
                            'A database with this name already exists '
                            'or there is a problem with the database file.')
                return
            emit_log_entry(main_log_file,
                           "Created a database for collection '%s'."
                           % collec_name)
            show_status_close()
	button_row(fr, (('Copy Existing Database', lambda : create_db(1), fr,
                         not base_candidates),
                        ('Create Empty Database', lambda : create_db(0), fr)),
		   size=1, default=None)[0].pack(pady=5)

        Frame(fr).pack(fill=Y, expand=YES)
        ### move to front and back at bottom?
        button_row(fr, ((close_button_text, lambda :fr.destroy(), 0),)
                   )[0].pack(side=RIGHT, padx=30, pady=10)
        fr.bind('<Return>', lambda *args: fr.destroy())

    pop_up_toplevel_window(make_window, (), 'Managing Library Databases',
                           set_grab=1)


# Help menu features are implemented below.

def about_window():
    def make_window(fr):
        title_row = Frame(fr)
        Label(title_row, text='Hypatheon Database Search for PVS',
              font=heading_font).pack(padx=40, side=LEFT)
        title_row.pack(pady=5)
        Message(fr, justify=CENTER, text=about_text).pack(padx=10)
        Frame(fr).pack(fill=Y, expand=YES)
	buttons = ((close_button_text, lambda : fr.destroy()),)
	but_fr, widgets = button_row(fr, buttons)
	but_fr.pack(fill=X, padx=20)
	fr.bind('<Return>', lambda *args: fr.destroy())
    pop_up_toplevel_window(make_window, (), 'About Hypatheon Client',
                           bottom_margin=10)

def quick_start():
    import quick_start
    top = None
    def add_buttons(fr):
	buttons = ((close_button_text, lambda *args: top.destroy()),)
	but_fr, widgets = button_row(fr, buttons)
	but_fr.pack(side=BOTTOM, fill=X, padx=20, pady=5)
    top, txt = scrolled_text_display(
		   title='Quick Start Guide for Hypatheon',
		   tab_stops=('.5c','numeric','1c',
			      '8c','numeric','8.5c','10c'),
		   geometry=window_geometry, button_proc=add_buttons,
		   return_frame=1)
    insert_annotated_text(txt, quick_start.quick_text % app_version) ###
#    txt.insert(END, quick_start.quick_text % app_version)
    txt['state'] = DISABLED
    top.bind('<Return>', lambda *args: top.destroy())


# The user's guide is loaded only on demand when the user requests
# display of the help window.  After loading, it will be saved for
# subsequent viewing.

def help_desk():
    if not helpDict: load_help()
    last_index = len(helpTopics) - 1

    fr = Toplevel()
    fr.geometry(window_geometry)
    fr.title(string="Hypatheon User's Guide")
    Frame(fr).pack(pady=3)
    close_cmd = EventHandler('Close Help', lambda *ev: fr.destroy())
    buttons = ((close_button_text, close_cmd),)
    but_fr, widgets = button_row(fr, buttons)
    but_fr.pack(fill=X, padx=20, pady=5, side=BOTTOM)

    left_fr = Frame(fr)
    Label(left_fr, text='Help Topics', font=heading_font).pack(pady=3)
    topics = Listbox(left_fr, selectmode=SINGLE, font=text_font,
		     exportselection=0, background=colors['text_bg_color'],
		     height=30, width=24, highlightthickness=0)
    topics.pack(expand=YES, fill=Y)
    left_fr.pack(side=LEFT, padx=3, pady=3, expand=YES, fill=Y)
    for item in helpTopics:
        topics.insert(END, ' ' + item)   # add leading blank to create margin
    txt_fr, txt = scrolled_text_widget(fr, width=60, height=30, font=text_font,
                                       tab_stops=('.5c','1c','10c'))
    txt_fr.pack(side=LEFT, padx=3, pady=3, expand=YES, fill=BOTH)

    def special_keys(event):
        if event.keysym in ('Up','KP_Up', 'Down','KP_Down'):
            sel = topics.curselection()
            if not sel: return
            topics.selection_clear(0, END)
            if event.keysym in ('Up','KP_Up'):
                index = max(0, int(sel[0]) - 1)
            else:
                index = min(last_index, int(sel[0]) + 1)
            topics.selection_set(index)
            help_func_index(topics, index, txt)

    fr.bind('<Key>', special_keys)
    if not on_win:
        fr.bind('<Enter>', lambda event: txt.focus_set())
#    fr.bind('<Enter>', lambda event: txt.focus_set())
    selection = lambda event: help_func(event.widget, event.y, txt)
    topics.bind('<Button-1>',
                EventHandler('Display help topic', selection ,fr))
    Frame(fr).pack(pady=2)
    fr.bind('<Return>', close_cmd)
    fr.protocol('WM_DELETE_WINDOW', close_cmd)
    help_func(topics, 0, txt)     # display intro
    topics.select_set(0)

def help_func(topics, y, txt):
    help_func_index(topics, topics.nearest(y), txt)

def help_func_index(topics, index, txt):
    name = topics.get(index)[1:]     # strip leading blank
    txt['state'] = NORMAL
    txt.delete(1.0, END)
    item = helpDict[name]
    txt.insert(END, '%s\n\n' % name)
    txt.tag_add('topic', '1.0', '2.0')
    txt.tag_configure('topic', foreground='dark blue', justify=CENTER,
                      font=heading_font)
    if isinstance(item, basestring):
        insert_annotated_text(txt, item) ###
#        txt.insert(END, item)
    else:
        txt.image_create(END, image=item)
    set_scrollbars_top(txt)
    txt['state'] = DISABLED

def load_help():
    global helpDict, helpTopics
    import user_help
    if on_osx: accel = 'Command'
    else:      accel = 'Ctrl'
    def adjust_text(text):    # customize by platform
	return text.replace('Ctrl-Cmd', accel)
    helpDict = {}
    for topic, text in user_help.helpItems:
        helpDict[topic] = adjust_text(text)
    # following preserves heading order; using dict functions does not
    helpTopics = [ item[0] for item in user_help.helpItems ]


about_text = '''
Version %s

Released %s

Contact:  %s

http://%s
''' % (app_version, release_date, email_addr, home_page)
