
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Includes classes and methods for displaying query results as well as
# setting up all GUI structures used to find search terms within file
# displays, select actions from context menus, do additional regular
# expression searches on text, etc.


import os, sys, string, glob
from time import strftime, localtime, asctime

from client_globals import *
from widget_utils   import *

from db_operations     import *

from tabbed_notebook  import add_tabbed_page
from find_state       import Find_State, many_threshold
from command_services import *
from submit_query     import rel_to_abs_paths

from format_headlines import format_headlines
from file_display     import fill_file_display, fill_proof_display, \
                             fill_step_display, fill_refs_display, \
                             copy_refs_text, identifier_context_popup, \
                             starting_display_position, append_theory_links

upper_pane_fraction    = user_prefs.getfloat('Client', 'upper_pane_fraction')

tag_margin             =  4
total_display_lines    = 50
query_results_height   = int(total_display_lines * upper_pane_fraction)
file_display_height    = total_display_lines - query_results_height
path_display_width     = 25  ### 52
path_display_threshold =  3 + path_display_width
path_display_format    = \
    '%%4s  %%-3s  %%s  [%%-8s]  %%%ds/  %%s' % path_display_threshold
                       # (flen, file_type, fdate, collection, path, base)
content_view_size = user_prefs.getint('Client', 'content_view_size')


#-----------------------------------------

# This class provides an interface to the tabbed notebook features.
# It probably can be absorbed by the following class.

class Query_Page(object):
    def __init__(self, client, query_strings, q_type, results):
       def make_page(master):
          self.master = master
          self.gui = QP_GUI_elements(master, client, query_strings,
                                     q_type, results)
       tab_label = ' '.join(filter(None, query_strings)) or 'No terms'
       add_tabbed_page(make_page, tab_label,
                       lambda : self.gui.clean_up())


# Create a window for query results, which will appear as a page in the
# tabbed notebook widget.  The basic layout is as follows:
#   1) a row of buttons and a display of the query terms
#   2) a text or listbox widget to show file items
#   3) a title bar with an entry widget for regexp searching and
#      a row of buttons for advancing through highlighted terms
#   4) a text widget to show the file contents

class QP_GUI_elements(object):
    def __init__(self, master, app, query_strings, q_type, results):
        self.app=app
        self.search_terms = query_strings
        self.q_type = q_type
        self.queryResults = results
        app_state['q_results'] = self
        # Returns a list of tuples according to category:
        #   path query: [file_id, rel_path, file_type, 1, None, collec_id]
        #   decl query: [file_id, rel_path, file_type, rank, decl_id, collec_id]
        self.path_list = rel_to_abs_paths(results)
        self.other_name_selection = ''

        results_summary = Frame(master)
        button_width = 3       # keep narrow to fit on line
        self.qlines_count = Label(results_summary, text='0')
        self.qlines_count.pack(side=LEFT, padx=0)
        self.result_count = Label(results_summary, text='/ %d' % len(results))
        self.result_count.pack(side=LEFT, padx=0)
        self.next_qlines = \
            ThinButton(results_summary, text='Next', width=button_width+1, ###
                       command=EventHandler('Next qlines button',
                                 lambda : self.format_qlines(self.view_size)))
        self.next_qlines.pack(side=LEFT, padx=3)
        self.all_qlines = \
            ThinButton(results_summary, text='All', width=button_width,
                       command=EventHandler('All qlines button',
                                            lambda : self.format_qlines(-1)))
        self.all_qlines.pack(side=LEFT, padx=0)
        self.create_query_box(results_summary, query_strings)
        self.reenter_query_cmd = \
            EventHandler('Reenter previous query text',
                         lambda: self.reenter_query(query_strings), 0)
        # need a way to keep following button from going off right end
        for label, cmd in (('Rew', self.submit_prover_cmd('Rewrite')),
                           ('Use', self.submit_prover_cmd('Use')),
                           ('Lem', self.submit_prover_cmd('Lemma')), ):
            ThinButton(results_summary, text=label, width=button_width,
                   command=cmd).pack(side=RIGHT, padx=2)

        results_summary.pack(padx=5, pady=5, fill=X, expand=YES)
        self.results_summary = results_summary

        page_fr = Frame(master)
        fr1 = Frame(page_fr)
        self.create_query_control_panel(fr1, query_strings)
        fr1.grid(padx=2, row=0, column=0, sticky='nsew')
        
        fr2 = Frame(page_fr)
        self.create_display_head(fr2)
        self.create_display_head2(fr2)
        fr2.grid(padx=2, pady=2, row=1, column=0, sticky='ew')

        self.file_header = Text(page_fr, relief=SOLID,
                                bd=1, height=2, padx=4, pady=4,
                                background=colors['headline_select']) #,
#                                rmargin=4, lmargin1=4, lmargin2=4)
        self.file_header.grid(padx=2, pady=1, row=2, column=0, sticky='ew')

        fr3, self.display = \
            scrolled_text_widget(page_fr, font=text_font, width=70,
                                 height=file_display_height)
        self.display.configure(cursor='', padx=0, pady=0)  ###
        self.starting_display_position = starting_display_position
        fr3.grid(padx=2, pady=1, row=3, column=0, sticky='nsew')

        for row, wt in ((0,1), (1,0), (2,0), (3,1)):
            page_fr.rowconfigure(row, weight=wt, minsize=0)
        page_fr.columnconfigure(0, weight=1, minsize=0)
        page_fr.pack(fill=BOTH, expand=YES)

        Frame(master).pack(pady=1)
        master.update_idletasks()

# A query display box is created to show the search terms that gave rise
# to the results below it.  Also included are handlers for bindings that
# display help information.

    def create_query_box(self, parent, query_strings):
        self.qbox = Label(parent, relief=SOLID, bd=1, anchor=W,
                          fg=colors['gray_text'], pady=2, width=30,
                          background=colors['text_bg_gray'],
                          text=' %s  ;  %s  ;  %s  ;  %s ' %
                               tuple(query_strings))
        self.qbox.bind('<Enter>', self.qbox_enter_action)
        self.qbox.bind('<Leave>', self.qbox_leave_action)
        self.qbox_action_id = None
        self.qbox_text_orig = self.qbox.cget('text')
        self.qbox.pack(side=LEFT, padx=7, expand=YES, fill=X)

    def qbox_enter_action(self, *args):
        def show_context_menu_message():
            self.qbox_action_id = 1
            self.qbox.config(text='Right click for context menu on path list',
                             fg='red4')
        self.qbox_action_id = \
            mainwindow.after(2000, show_context_menu_message)

    def qbox_leave_action(self, *args):
        if self.qbox_action_id == 1:
            self.qbox.config(text=self.qbox_text_orig, fg=colors['gray_text'])
        elif self.qbox_action_id:
            mainwindow.after_cancel(self.qbox_action_id)
        self.qbox_action_id = None
        
# When the Edit button is selected, fill the main query entries with values
# from the current results page.  Briefly highlight the text and its origin.
# If any string is None, skip it.

    def reenter_query(self, query_strings, include_qbox=1, linger=5):
        entries = self.app.gui.q_entries
        def reset_text_color(highlight_widgets):
            self.qbox['bg'] = colors['text_bg_gray']
        for ent, q_str in zip(entries, query_strings):
            if q_str != None:
                ent.delete(0, END)
                ent.insert(END, q_str)
        self.qbox['bg'] = colors['find_error_bg']
        mainwindow.after(linger * 1000, reset_text_color, entries)

# The text display widget and the listbox showing file items have
# similar context menus.

    def create_display_context_menu(self):
        display_popup_handler = \
            self.common_context_popup(self.content_view, 1)
        def pop_up(event):
            self.popup_index = self.selected_index
            # declaration names will be saved if right button selects them
            display_popup_handler(event)
            self.other_name_selection = ''
        bind_right_button(self.display.bind,
                          EventHandler('Display popup context menu',
                                       pop_up, 0))

# A separate context menu is used for the entire path list.  Path names
# can be written to a file or exported to an external editor.

    def path_list_popup(self, content_view, q_type):
        def menu_panel_item(label, extract_fn, filter_rel_paths=0):
            return (label + '...',
                    lambda : self.path_list_menu_dialog(label, extract_fn,
                                                        filter_rel_paths))
        abs_path_sublist = \
            [ p[1] for p in self.path_list if os.path.isabs(p[1]) ]

        # Following extraction functions assume they are passed the
        # argument rt (result tuple), which comes from self.path_list,
        # and ia (item attributes), which comes from self.item_attributes.
        def form_lib_thy(rt, ia, path_form=0):
            if path_form: template = '%s/%s.pvs'
            else:    template = '%s@%s'
            return template % (ia[2], ia[1])

        if content_view:
            if q_type == 'library':
                decl_choices = []
            else:
                thy_lib_menu = \
                    [ menu_panel_item('Copy Theory Names',
                                      lambda rt,ia: ia[1] ),
                      menu_panel_item('Copy Library Names',
                                      lambda rt,ia: ia[2] ),
                      menu_panel_item('Copy Library @ Theory Items',
                                      form_lib_thy),
                      menu_panel_item('Copy Library/Theory.pvs Items',
                                      lambda rt,ia: form_lib_thy(rt, ia, 1)),
                      ]
                import_menu = \
                    [ menu_panel_item('Copy IMPORTING Theory Items',
                                      lambda rt,ia: 'IMPORTING %s' % ia[1] ),
                      menu_panel_item('Copy IMPORTING Library @ Theory Items',
                                      lambda rt,ia: 'IMPORTING %s' % \
                                          form_lib_thy(rt,ia)),
                      ]
                if q_type == 'declaration':
                    decl_names = [ menu_panel_item('Copy Declaration Names',
                                                   lambda rt,ia: ia[0] ) ]
                else:
                    decl_names = []

                decl_choices = decl_names + \
                               [('Copy Theory/Library Names', thy_lib_menu),
                                ('Copy Importing Directives', import_menu),
                                ]
        else:
            decl_choices = []

        file_path_menu = \
            [ menu_panel_item('Copy File Names',
                              lambda rt,ia: os.path.basename(rt[1]), 1),
              menu_panel_item('Copy Directory Names',
                              lambda rt,ia: os.path.basename(
                                                os.path.dirname(rt[1])), 1),
              menu_panel_item('Copy Directory/File Items',
                              lambda rt,ia: os.path.join(
                                  os.path.basename(os.path.dirname(rt[1])),
                                  os.path.basename(rt[1])), 1),
              menu_panel_item('Copy Directory Paths',
                              lambda rt,ia: os.path.dirname(rt[1]), 1),
              menu_panel_item('Copy Full Path Names',
                              lambda rt,ia: rt[1], 1),
              ]

        def start_term(cmd):
            path_names = [ "'%s'" % escaped_blanks(p, 1)
                           for p in abs_path_sublist ]
            invoke_terminal('$HOME', cmd, *path_names)
        terminal_menu = \
            [ (t[0], lambda cmd=t[1]: start_term(cmd))
              for t in terminal_windows ]
        path_menu = \
            [ ('Copy File/Path Names', file_path_menu),
              None,
              ('Invoke Shell Command on Paths...',
               lambda : invoke_cmd_on_path_list(
                    self.write_paths_to_file, abs_path_sublist)),
              ('Open Terminal Window on Paths', terminal_menu),
              ('Explain Terminal Window on Paths',
               self.explain_terminal_on_paths),  ]
        if app_state['exec_mode'] == 'Search-only':
            path_menu = []

        choices = [ ('Copy Search Terms',
                     lambda : copy_text_clipboard(
                                  ' ; '.join(self.search_terms))),
                    ('Edit Search Terms',
                     lambda : self.reenter_query_cmd()),
                    None,
                    ] + decl_choices + path_menu
        menu = add_popup_menu(self.path_widget, choices)
        def display_popup(event):
            try:
                menu.tk_popup(*menu.winfo_pointerxy())
            except TclError:
                return     # happens on OS X when application window not on top
        return display_popup

    # Create a dialog window to collect user's choices on how to form items
    # from the query result items.  Then copy to clipboard or write to a file.

    def path_list_menu_dialog(self, result_label, extract_fn, filter_rel_paths):
        if filter_rel_paths:
            path_list = [ p for p in self.path_list if os.path.isabs(p[1]) ]
        else:
            path_list = self.path_list
        num_items = len(path_list)
        # First need to retrieve remaining attributes, which could introduce
        # a noticeable delay:
        self.get_next_attrib_increment(-1)
        item_attribs = self.item_attributes
        column_choices = \
            (('Delimiters',
              ('Commas', 'Spaces', 'Newlines'), (', ', ' ', '\n')),
             ('Quotes',
              ('None', 'Single', 'Double'),     ('0', '1', '2')),
             ('Replication',
              ('Unique', 'Complete', None),     ('1', '0', None)), )

        def generate_items(delimiter, quote, unique):
            items = [ extract_fn(p,a) for p,a in zip(path_list, item_attribs) ]
            if unique == '1': items = unique_list(items)
            if   quote == '1': items = [ "'%s'" % s for s in items ]
            elif quote == '2': items = [ '"%s"' % s for s in items ]
            return delimiter.join(items)

        def make_window(fr):
            Label(fr, text='%s (%s items available)' % (result_label, num_items)
                  ).pack(pady=10)
            # options are presented in columns of radio buttons
            var_dict = {}
            def make_radio_columns(parent, choices):
                col_fn = lambda w, kwargs: Radiobutton(w, **kwargs)
                all_args = []
                for heading, names, values in choices:
                    col_args = []
                    var = StringVar()
                    for name, v in zip(names, values):
                        if v == None: args = None
                        else: args = {'variable': var, 'value': v, 'text': name}
                        col_args.append(args)
                    var.set(values[0])   # first choice initially
                    var_dict[heading] = var
                    all_args.append(col_args)
                sett_fr, settings = \
                    build_table(parent, (col_fn,) * len(choices),
                                transpose_lists(all_args), padx=20,
                                headers=[ ch[0] for ch in choices ] )
                sett_fr.pack(padx=5, pady=5)
            make_radio_columns(fr, column_choices)

            def column_items():
                return generate_items(
                           *[ var_dict[attr].get() for attr in
                              ('Delimiters', 'Quotes', 'Replication') ] )
            def save_items():
                file_name = \
                    asksaveasfilename(title='Save Query Result Items As...',
                                      initialdir=self.app.saveas_initialdir)
                if file_name:
                    self.app.saveas_initialdir = os.path.dirname(file_name)
                    write_text_file(column_items(), file_name,
                                    0, error_dialog_fn)
                fr.destroy()
            def copy_items():
                copy_text_clipboard(column_items())
                fr.destroy()
            def send_items():
                ### probably need quote escapes:
                ### esc_items = column_items().replace('"', r'\"')
                self.app.pvs_eval_and_wait(
                    '(insert-prover-strings %s)' % column_items())
                fr.destroy()
            disable_send = \
                not app_state['in_checker']    # not self.app.are_we_in_checker()
            ### move to front and pack at bottom?
            button_row(fr, (('Copy', copy_items, fr),
                            ('Send to PVS', send_items, fr, disable_send),
                            ('Save As...', save_items, fr),
                            ('Cancel', lambda : fr.destroy(), 0)),
                       size=1)[0].pack(side=RIGHT, padx=20, pady=15)
            fr.bind('<Return>',
                    EventHandler('Copy items', lambda *args: copy_items(), fr))

        pop_up_toplevel_window(make_window, (), 'Copy Query Result Items',
                               bottom_margin=0)

    def write_paths_to_file(self, path_list):
        file_name = asksaveasfilename(title='Save Path Names As...',
                                      initialdir=self.app.saveas_initialdir)
        if file_name:
            self.app.saveas_initialdir = os.path.dirname(file_name)
            path_names = [ p+'\n' for p in path_list ]
            write_text_file(path_names, file_name, 1, error_dialog_fn)

    def explain_terminal_on_paths(self):
        def make_window(fr):
            Message(fr, aspect=250, text=display_messages['explain_terminal'],
                    font=text_font).pack(padx=10)
            ### move to front and pack at bottom?
            button_row(fr, ((close_button_text, lambda : fr.destroy(), 0), )
                       )[0].pack(side=RIGHT, padx=40, pady=10)
        pop_up_toplevel_window(make_window, (),
                               'Explain Terminal Window on Paths',
                               bottom_margin=0)
        

# Two possible subpanels can be created according to query type.
# If content search terms are present, use the content-based panel;
# otherwise, use the path-based panel.
### Path queries are currently disabled.  They could be reinstated later.

    def create_query_control_panel(self, win, query_strings):
        if self.q_type[0] == 'path':
            return
#            self.path_query_control_panel(win)
#            qbox_popup_handler = self.path_list_popup(0, self.q_type[0])
        else:
            self.content_query_control_panel(win)
            qbox_popup_handler = self.path_list_popup(1, self.q_type[0])
        bind_right_button(self.qbox.bind,
                          EventHandler('Path list popup context menu',
                                       qbox_popup_handler, 0))

# # The path-based panel is a scrolled listbox showing file items.

#     def path_query_control_panel(self, win):
#         fr, self.path_widget = \
#             scrolled_listbox(win, height=query_results_height, width=60,
#                              font=small_fixed_font) #  horiz_scroll=1,
#         self.path_widget.configure(cursor='')
#         def get_file_contents(win, y):
#             index = win.nearest(y)
#             if 0 <= index < len(self.item_attributes):
#                 # account for extra lines after last item displayed
#                 self.view_file(0, 1, 1, index)
#                 self.selected_index = index
#         self.path_widget.bind('<Button-1>',
#             EventHandler('Path control path_widget selection',
#                          lambda event:
#                              get_file_contents(event.widget, event.y)))
#         self.popup_handler = self.common_context_popup(0, 1)
#         def pop_up(event):
#             self.popup_index = self.path_widget.nearest(event.y)
#             self.popup_handler(event)
#         bind_right_button(self.path_widget.bind,
#                           EventHandler('Path popup context menu',
#                                        pop_up, 0))
#         fr.pack(fill=BOTH, expand=YES)

# A content-based panel is a scrolled text widget with a lot of tagged
# regions created by functions in module format_headlines.

    def content_query_control_panel(self, win):
        # Use a small initial font on Linux so pane proportions are right.
        initial_font = ('TkDefaultFont', 10) if on_linux else text_font  ###
        fr, self.path_widget = \
            scrolled_text_widget(win, width=60, height=query_results_height,
                                 font=initial_font,  ###
                                 tab_stops=('200', '320', '440'))
        self.path_widget.config(padx=0, pady=0)  ###
        fr.pack(fill=BOTH, expand=YES)
        self.popup_handler = self.common_context_popup(1, 0)
        self.path_widget.configure(cursor='')
        ### following don't seem to work:
        self.path_widget.unbind('<Double-Button-1>')
        self.path_widget.unbind('<Triple-Button-1>')

# Buttons are provided to generate prover commands and paste them
# into the prover's Emacs buffer (*pvs*).  Also invoked from menus.

    def submit_prover_cmd(self, cmd='', args=1):
        def submit_cmd():
            # These buttons shouldn't do anything if we're not in a proof.
            if not app_state['in_checker']:
                status_prompt(self.app.gui.status_msg,
                              "No proof is in progress", 'red')
                return
            if callable(cmd): cmd_str = cmd().strip().lower()
            else:             cmd_str = cmd.strip().lower()
            args_str, decl_name = '', ''
            if args:
                if callable(args):
                    args_str = args()
                elif isinstance(args, basestring):
                    args_str = args
#                    decl_name = get_decl()   ### thy and lib?
                else:
                    result_item = self.path_list[self.selected_index]
                    path_name, file_type, rank, decl_id = result_item[1:5]
                    decl_name, thy_name, lib_name = \
                        self.item_attributes[self.selected_index][0:3]
                    args_str = decl_name

            # def pvs_step(cmd):
            #     def eval_pvs(next):
            #         self.app.pvs_eval_and_wait(cmd)
            #         if next: mainwindow.after(1, next[0], next[1:])
            #     return eval_pvs
            # def show_dialog(*args):
            #     def show_it(next):
            #         user_dialog(*args)
            #         if next: mainwindow.after(1, next[0], next[1:])
            #     return show_it

            # encode double-quote characters for safe passage
            cmd_str = cmd_str.replace('"', '&quot;')
            if args_str:
                insertion_cmd = '(insert-prover-cmd "%s" "%s")' \
                                % (cmd_str, args_str)
            else:
                insertion_cmd = '(insert-prover-cmd "%s")' % cmd_str
#            success_msg = 'Prover command insertion was successful.'

            # if theory is imported:
            # ...
            ### mainwindow.after(1, pvs_step(insertion_cmd), [])
            self.app.pvs_eval_and_wait(insertion_cmd)
            status_prompt(self.app.gui.status_msg,
                          "A command was sent to the prover")
#                          "A '%s' command was sent to the prover" % cmd_str)

            # else:   # theory not imported
#                      if not user_dialog(askokcancel,
#                                         *dialog_messages['wait_for_import']):
#                         return
#                      pvs_eval_and_wait('(stop-and-import "%s" "%s")' %
#                                        (lib_name, thy_name))
#                      mainwindow.after(1, pvs_step(insertion_cmd),
#                          [pvs_step('(resume-stopped-proof)'),
#                           pvs_step(insertion_cmd),
#                           show_dialog(showinfo, 'Importing', success_msg)])

#            else:
#                user_dialog(showerror, 'Send lemma command to PVS',
#                            'No formula has been selected for submission.')

        return EventHandler('Submit prover cmd ', submit_cmd)


#-----------------------------------------

# A regexp-based text search feature is implemented to search for strings
# in the display window.  Args to this function indicate behavior:
#  next = 0 for starting at beg/end of file, = 1 for search from prev match;
#  dir  = 1 for forward, = -1 for backward;

    def find_in_display(self, event, next=0, dir=1):
        # event is a dummy arg for absorbing Tkinter event objects
        pattern = self.find_entry.get()
        find_occur = self.find_state[self.selected_index]
        if not next and pattern == find_occur.prev_find_pattern: return
        self.display.tag_delete('highlight_line', 'find_match')
        self.display.see(1.0)
        if next and find_occur.prev_occ_values[1][2]:
            # previously found occurrences exist
            self.find_in_display_next(dir, find_occur)
        else:
            self.find_in_display_new(pattern, find_occur)

# Advance to the next/previous occurrence.

    def find_in_display_next(self, dir, find_occur):
        occurrence, total = find_occur.prev_occ_values[1][1:]
        occurrence += dir                         # 1-base index
        if not (1 <= occurrence <= total):
            if total:
                occurrence -= total * dir         # dir = +/- 1
            else:
                find_occur.show_occurrence(1, dir, '-----  ')
                if dir == 1: self.display.see(END)
                else:        self.display.see(1.0)
                return
        find_occur.prev_occ_values[1][1] = occurrence
        find_occur.show_occurrence(1, dir)
        site_beg_end = find_occur.find_sites[occurrence - 1]
        self.display.tag_add('find_match', *site_beg_end)
        find_occur.highlight_line(float_tk(site_beg_end[0]), 'find_match')

# For a new pattern, do some setup then display the first occurrence.

    def find_in_display_new(self, pattern, find_occur):
        disp = self.display
        count_var = IntVar()
        find_occur.find_sites = []
        start = self.starting_display_position
        try:
            match_beg = pattern and \
                        disp.search(pattern, start, END, regexp=1, nocase=1,
                                    count=count_var)
        except:   # allow temporarily ill-formed pattern, but alert user
            find_occur.show_occurrence(1, 1, '?????  ', 0)
            return
        total_count = 0
        while match_beg:
            match_end = disp.index('%s + %s chars' %
                                   (match_beg, count_var.get()))
            find_occur.find_sites.append((match_beg, match_end))
            total_count += 1
            if total_count >= many_threshold: break
            match_beg = disp.search(pattern, match_end, END, nocase=1,
                                    count=count_var, regexp=1)
        find_occur.prev_occ_values[1] = [1, 0, total_count]
        if pattern:
            self.find_in_display_next(1, find_occur)
        else:
            find_occur.clear_occurrence()
        find_occur.prev_index = 1


# Place just above the text display area a title and the widgets needed
# for the auxiliary text search feature (find function).

    def create_display_head(self, header):
        header_fr = Frame(header)
        fr1, fr2 = Frame(header_fr), Frame(header_fr)
        self.path_label = Message(fr1, width=400, justify=LEFT)
        self.path_label.pack(side=LEFT)
        self.find_entry = entry_widget(fr1, width=20)
        wbut_size = 13
        wbut_padx = (wbut_size - 9) // 2
        if on_osx: lr_buttons = ((1, '>>', 's'), (-1, '<<', 'r'))
        else:      lr_buttons = ((1, u_triagrt, 's'), (-1, u_triaglf, 'r'))
        for dir, arrow, key in lr_buttons:
            find_next = EventHandler('Find next match button',
                                     lambda ev=0, dir=dir:
                                         self.find_in_display(ev, 1, dir), 0)
            if using_ttk or using_tile:
                wedge = ThinButton(fr2, text=arrow, command=find_next, width=2)
            else:
                wedge = Button(fr2, text=arrow, pady=0, command=find_next)
            wedge.pack(side=RIGHT, padx=wbut_padx)
            self.find_entry.bind('<Control-%s>' % key, find_next)
        self.find_entry.pack(side=RIGHT, padx=2)
        def clear_find_entry():
            self.find_entry.delete(0,END)
            self.find_in_display(None)   # as if entered by keystrokes
            return 'break'
        bind_control_key(self.find_entry, 'u', clear_find_entry)
        
        self.add_find_context(fr1)
        Label(fr1, text=' Find:').pack(side=RIGHT, padx=0)
        # filter out shift keys, control keys, etc.
        def key_find(event):
#            print event.type, event.keysym, event.keycode, event.keysym_num, event.char
            if event.keysym.isalnum() and not event.keysym.startswith('Control'):
                self.find_entry.after(10, self.find_in_display, (event,))
        # make search incremental (update on every keystroke):
        self.find_entry.bind('<Key>',
                             EventHandler('Find key entry', key_find, 0))
        fr2.pack(side=RIGHT)
        fr1.pack(side=LEFT, expand=YES, fill=X)
        header_fr.pack(fill=X, expand=YES)

    def create_display_head2(self, header):
        fr = Frame(header)
        Label(header, text='Name terms:').pack(side=LEFT, padx=5)
        self.name_button_row = Frame(header)
        self.name_button_row.pack(side=LEFT, padx=5)
        Frame(header).pack(side=LEFT, padx=10)
        Label(header, text='Ref terms:').pack(side=LEFT, padx=5)
        self.refs_button_row = Frame(header)
        self.refs_button_row.pack(side=LEFT, padx=5)
        self.term_button_list = []
        Frame(fr).pack(side=RIGHT, fill=X, expand=YES)
        fr.pack()   ### expand?

# Add context menu and handlers for dynamic Find entry messaging.

    def add_find_context(self, header):
        header.bind('<Enter>', self.find_entry_enter_action)
        header.bind('<Leave>', self.find_entry_leave_action)
        self.find_entry_action_id = None
        self.find_entry_text_orig = ''
#        self.find_entry_bf_orig   = colors['text_bg_color']
        bind_right_button(self.find_entry.bind,
                          EventHandler('Display find popup context menu',
                                       lambda ev: self.find_context_popup()(ev),
                                       0))
        self.find_entry_header = header

# The actual popup menu is constructed here.  It tries to include various
# combinations of the query search terms as possible patterns.

    def find_context_popup(self):
        def clear_insert(regexp=''):
            self.find_entry.delete(0,END)
            self.find_entry.insert(END, regexp)
            self.find_in_display(None)   # as if entered by keystrokes
        def make_choice(combo):
            esc_combo = '.*'.join(map(regexp_escape, combo))   ## re.escape
            return ("Insert '%s'" % esc_combo,
                    lambda esc_combo=esc_combo: clear_insert(esc_combo))
        terms = self.app.gui.q_entries[0].get().split()
        # don't want outer quotes on terms for regexps
        terms = [ t.strip('"\'') for t in terms ]
        if len(terms) > 1:
            combos = [ (a,b) for a,b in zip(terms[:-1], terms[1:]) ]
        elif terms:
            combos = [terms]
        else:
            combos = []
        if len(terms) > 2: combos.append(terms)
        if combos:
            combo_choices = [ make_choice(c) for c in combos ]
        else:
            combo_choices = []  ### something for null case???
        choices = [ ('Clear Regular Expression', lambda : clear_insert()),
                    None ] + combo_choices
        menu = add_popup_menu(self.find_entry, choices)
        def display_popup(event):
            try:
                menu.tk_popup(*menu.winfo_pointerxy())
            except TclError:
                return     # happens on OS X when application window not on top
        return display_popup

# Entering the title bar can trigger a balloon-style help message about Find.

    def find_entry_enter_action(self, *args):
        def show_context_menu_message():
            self.find_entry_action_id = None
            balloon = Label(self.find_entry_header, relief=SOLID, bd=1,
                            text=' Right click in Find box for menu ',
                            bg=colors['headline_select'])
            balloon.place(anchor=CENTER, relx=0.5, rely=0.5)
            mainwindow.after(5000, lambda : balloon.destroy())
        if self.find_entry_action_id == None:
            self.find_entry_action_id = \
                mainwindow.after(5000, show_context_menu_message)

    def find_entry_leave_action(self, *args):
        if self.find_entry_action_id != None:
            mainwindow.after_cancel(self.find_entry_action_id)
        self.find_entry_action_id = None


# A context menu is available for each listbox or headline item, allowing
# the user to perform various actions based on path.

    def common_context_popup(self, content_view, force_display):
        def item_state(enabled):
            if enabled: return NORMAL
            else:       return DISABLED

        if content_view:
            decl_label_choices = [ ('', null_proc, 'decl_label') ]
            decl_name_menu = \
                [ ('Copy Name',
                   lambda : copy_text_clipboard(
                                self.common_context_decl_attribs[0])),
                  ('Copy Name with Quotes',
                   lambda : copy_text_clipboard(
                              '"%s"' % self.common_context_decl_attribs[0])), ]
            thy_lib_menu = \
                [ ('Copy Theory Name',
                   lambda : copy_text_clipboard(
                        self.common_context_decl_attribs[1])),
                  ('Copy Library Name',
                   lambda : copy_text_clipboard(
                        self.common_context_decl_attribs[2])),
                  ('Copy Library @ Theory',
                   lambda : copy_text_clipboard(
                        '%s@%s' % (self.common_context_decl_attribs[2],
                                   self.common_context_decl_attribs[1]))),
                  ('Copy Library/Theory.pvs',
                   lambda : copy_text_clipboard(
                        '%s/%s.pvs' % (self.common_context_decl_attribs[2],
                                   self.common_context_decl_attribs[1]))), ]
            import_menu = \
                [ ('Copy IMPORTING Theory',
                   lambda : copy_text_clipboard(
                        'IMPORTING %s' % self.common_context_decl_attribs[1])),
                  ('Copy IMPORTING Library @ Theory',
                   lambda : copy_text_clipboard(
                        'IMPORTING %s@%s' % 
                        (self.common_context_decl_attribs[2],
                              self.common_context_decl_attribs[1]))), ]
            if self.q_type[0] == 'step': decl_step = 'Step'
            else:                        decl_step = 'Declaration'
            decl_choices = [
                    ('Copy %s Name' % decl_step, decl_name_menu, 'decl_name'),
                    ('Copy Theory/Library Name', thy_lib_menu, 'thy_lib'),
                    ('Copy Importing Directive', import_menu, 'import'),
                    ]
        else:
            decl_label_choices = []
            decl_choices = []

        def file_path_menu_item(extract_fn):
            copy_text_clipboard(extract_fn(self.common_context_path_name))
        file_path_menu = \
            [ ('Copy File Name',
               lambda : file_path_menu_item(os.path.basename)),
              ('Copy Directory Name',
               lambda : file_path_menu_item(
                            lambda name:
                                os.path.basename(os.path.dirname(name)))),
              ('Copy Directory/File',
               lambda : file_path_menu_item(
                            lambda name: os.path.join(
                                os.path.basename(os.path.dirname(name)),
                                os.path.basename(name)))),
              ('Copy Directory Path',
               lambda : file_path_menu_item(os.path.dirname)),
              ('Copy Full Path Name', 
               lambda : file_path_menu_item(identity_fn)), ]
        clone_proof_menu = \
            [ ('Insert Script in Proof Buffer',
               lambda : self.clone_proof_insert(self.popup_index),),
#               'insert_script'),
              ('Overwrite Script in Proof Buffer',
               lambda : self.clone_proof_insert(self.popup_index, 1),), ]
#               'overwrite_script'), ]
        if self.q_type[0] == 'module':
            separate_display_menu = \
                [ ('Theory Source',
                   lambda : self.view_file(content_view, 0, 1, self.popup_index,
                                           force_display=force_display),) ]
        elif self.q_type[0] == 'step':
            separate_display_menu = \
                [ ('Step Documentation',
                   lambda : self.view_step(0, self.popup_index, '')) ]
        else:
            separate_display_menu = \
                [ ('Theory Source',
                   lambda : self.view_file(content_view, 0, 1, self.popup_index,
                                           force_display=force_display),),
                  ('Proof Script',
                   lambda : self.view_proof(0, self.popup_index, ''),),
                  ('Declaration References',
                   lambda : fill_refs_display(self, 'declaration',
                                              self.popup_index, ''),),
                  ('Proof References',
                   lambda : fill_refs_display(self, 'proof',
                                              self.popup_index, ''),)
                  ]
        if self.q_type[0] == 'module':
            copy_text_menu = \
                [ ('Theory Source',
                   lambda : self.copy_theory_source(self.popup_index),) ]
        elif self.q_type[0] == 'step':
            copy_text_menu = \
                [ ('Step Documentation',
                   lambda : copy_text_clipboard(
                                self.item_attributes[self.popup_index][3]
                                + '\n' )) ]
        else:
            copy_text_menu = \
                [ ('Theory Source',
                   lambda : self.copy_theory_source(self.popup_index),),
                  ('Proof Script',
                   lambda : self.copy_proof_script(self.popup_index),),
                  ('Declaration References',
                   lambda : copy_refs_text(self, 'declaration',
                                           self.popup_index),),
                  ('Proof References',
                   lambda : copy_refs_text(self, 'proof', self.popup_index),)
                  ]

        def start_term(command):
            abs_path = self.common_context_path_name
            if not os.path.isdir(abs_path):
                abs_path = os.path.dirname(abs_path)
            invoke_terminal(abs_path, command)
        terminal_menu = \
            [ ( t[0], lambda cmd=t[1]: start_term(cmd) )
              for t in terminal_windows ]

        def invoke_editor(command):
            os_system(command % self.common_context_path_name,
                      redirect=2, background=1)
        self.editor_menu = \
            [ (e[0], lambda cmd=e[1]: invoke_editor(cmd))
              for e in text_editors ]

        choices = decl_label_choices + \
                  [ ('', null_proc, 'path_label'),
                    None,
                    ] + \
                    decl_choices + [
                    ('Copy File/Path Name', file_path_menu, 'file_path'),
                    None,
                    ('Display in Separate Window', separate_display_menu,
                     'separate_display'),
                    ('Copy Source/References', copy_text_menu, 'copy_text'),
                    ('Send Proof Script to PVS', clone_proof_menu, 'clone_prf'),
                    None,
                    ('Invoke Shell Command on File...',
                     lambda : invoke_cmd_on_path(0,
                                  self.path_list[self.popup_index][1]),
                     'shell_file'),
                    ('Invoke Shell Command on Directory...',
                     lambda : invoke_cmd_on_path(1,
                                  os.path.dirname(
                                      self.path_list[self.popup_index][1])),
                     'shell_dir'),
                    ('Open Terminal Window on Directory', terminal_menu,
                     'terminal'),
                    None,
                    ('Launch External Editor on File', self.editor_menu,
                     'editor'),
                    ]
        menu, tag_dict = add_popup_menu(self.path_widget, choices)
        init_enabled_tags = tag_dict.keys()
        if content_view:
            menu.entryconfigure(tag_dict['decl_label'], state=DISABLED)
            init_enabled_tags.remove('decl_label')
        menu.entryconfigure(tag_dict['path_label'], state=DISABLED)
        init_enabled_tags.remove('path_label')
        init_enabled = [ tag_dict[t] for t in init_enabled_tags ]

        def display_popup(event):
            if self.popup_index < 0: return        # empty listbox
            if self.other_name_selection: return   # use separate popup
            try:
                result_item = self.path_list[self.popup_index]
            except IndexError:
                return       # clicked below last item
	    path_name, file_type = result_item[1:3]
            self.common_context_path_name = path_name
#            in_checker = app_state['in_checker']   # self.app.are_we_in_checker()
            if content_view:
                # rank, decl_id = result_item[3:5]
                decl_name, thy_name, lib_name = \
                    self.item_attributes[self.popup_index][0:3]
                self.common_context_decl_attribs = decl_name, thy_name, lib_name
                label_fields = [ name and s % name for s, name in
                                 zip(('    %s', ' @ %s', ' . %s'),
                                     (lib_name, thy_name, decl_name)) ]
                menu.entryconfigure(tag_dict['decl_label'],
                                    label=''.join(label_fields))
            for i in init_enabled:
                menu.entryconfigure(i, state=NORMAL)
            disable = []
            if content_view:
                if not decl_name: disable.append('decl_name')
                if not thy_name:  disable.extend(('thy_lib', 'import'))
            if self.q_type[0] not in ('declaration', 'proof', 'module', 'step'):
                disable.extend(('separate_display', 'copy_text'))
            if self.q_type[0] not in ('declaration', 'proof'):
                disable.append('clone_prf')
            elif self.app.exec_mode != 'PVS-client':   # not connected to PVS
                disable.append('clone_prf')
            if self.app.exec_mode == 'Search-only':    # no PVS installation
                disable.extend(('file_path', 'shell_file', 'shell_dir',
                                'terminal', 'editor', 'clone_prf'))
            if not os.path.isabs(path_name) or self.q_type[0] == 'step':
                disable.extend(('file_path', 'shell_file', 'shell_dir',
                                'terminal', 'editor'))
#             if attrib == 'encoded':      disable.append('separate')
#             elif attrib == 'path_list':  disable.append('shell_file')
            if self.q_type[0] not in ('declaration', 'proof', 'module'):
                disable.append('editor')
            if content_view and lib_name == 'prelude': disable.append('import')
            for d in disable: menu.entryconfigure(tag_dict[d], state=DISABLED)

            if len(path_name) > 40: path_name = '...'+path_name[-38:]
            menu.entryconfigure(tag_dict['path_label'],
                                label='    %s' % path_name)
            try:
                menu.tk_popup(*menu.winfo_pointerxy())
            except TclError:
                return     # happens on OS X when application window not on top
        return display_popup


    def clone_proof_insert(self, item_num, overwrite=None):
        attribs = self.look_up_proof(item_num)
        if attribs:
            decl_name, lib_name, thy_name, script = attribs
            script_file = open(proof_script_path, 'w')
            annotated_script = \
                ';; Cloned proof from %s in %s@%s.\n%s' % attribs
            script_file.write(script)
            script_file.close()
            insertion_cmd = '(insert-proof-script "%s.%s" "%s" %s)' \
                            % (thy_name, decl_name, proof_script_path,
                               overwrite and 't' or 'nil')
            status = self.app.pvs_eval_and_wait(insertion_cmd)
            if status == '0':
                user_dialog(showerror, 'Insert proof script',
                            "There is no buffer named 'Proof'.")
        else:
            user_dialog(showerror, 'Insert proof script',
                        'No proof exists for this declaration.')

    def copy_proof_script(self, item_num):
        attribs = self.look_up_proof(item_num)
        if attribs:
            annotated_script = \
                ';; Proof of %s in %s@%s.\n%s' % attribs
            copy_text_clipboard(annotated_script)
        else:
            user_dialog(showerror, 'Copy proof script',
                        'No proof exists for this declaration.')

    def copy_theory_source(self, item_num):
        full_path = self.path_list[item_num][1]
        collec_id = self.path_list[item_num][-1]
        body, addendum, body_lines, add_lines = \
	    get_full_content_plus(full_path, collec_id, 0,
                                  self.item_attributes[item_num][1])
        copy_text_clipboard(body + addendum)


# Retrieve the next increment of item_attributes and append to the existing
# list.  Also retrieve additional values of on_import_chain when needed.
# When size = -1, retrieve the rest.

    def get_next_attrib_increment(self, size):
        start = len(self.item_attributes)
        max_size = len(self.path_list) - start
        if max_size == 0:
            return          # rest of list could have been retrieved already
        if size == -1:
            size = max_size
        else:
            size = min(size, max_size)
        new_attribs = get_all_item_attributes(self.q_type[0],
                                              self.path_list[start:start+size])
        self.item_attributes.extend(new_attribs)
        if self.app.exec_mode == 'PVS-client' and \
                self.q_type[0] in ('declaration', 'proof', 'module'):
            # connected to PVS; check if theories are on import chain;
            # use fully qualified form lib@thy
            def form_lib_thy(a):
                if a[2] == 'prelude': return '"%s"' % a[1]
                else:                 return '"%s@%s"' % (a[2], a[1])
            names_lisp_list = \
                '(%s)\n' % ' '.join(map(form_lib_thy, new_attribs))
            self.on_import_chain.extend(
                self.app.pvs_eval_and_wait('(import-chain-theories "%s")'
                                           % pvs_data_file,
                                           list_val=1,
                                           file_data=names_lisp_list))
        else:
            self.on_import_chain.extend([ None for a in new_attribs ])

# After running a query and creating a new results page, the main GUI
# event handler invokes this procedure to format and post the results.
# Query terms of form: (name terms, refs terms, path terms, item type)

    def post_query_results(self, queries, q_parsed, results):
        self.selected_index = None
        path_list_clone = [ None for p in self.path_list ]
        # attributes will be extracted later and overwrite path list items:

        self.item_attributes = []
        self.on_import_chain = []
        self.sites = []
        self.displayed_before = path_list_clone[:]
        self.find_state_main  = path_list_clone[:]
        self.find_state_alt   = path_list_clone[:]
        self.find_state       = self.find_state_main       
        self.prev_find_state  = self.find_state_main       
        self.find_occurrence = None
        self.after_display_action = None

        self.num_qlines = 0
        self.content_view = self.q_type[0] != 'path'
        ### Following has been superseded by identifier context menu:
        ### self.create_display_context_menu()

        # Results is a list of tuples/lists
        if self.content_view:                 # content query results
            self.view_size = content_view_size
            self.format_qlines = lambda size: \
                format_headlines(self, results, self.path_list, q_parsed, size)
            # results in path_list have extra item: declaration_id
        else:
            pass
            ### path queries currently disabled
#            self.view_size = path_view_size
#            self.format_qlines = lambda size: \
#                self.format_pathlines(results, self.path_list, size)
        self.format_qlines(self.view_size)
        identifier_context_popup(self, self.content_view, self.q_type[0])

    def adjust_continue_buttons(self):
        if self.num_qlines == len(self.path_list):
            self.next_qlines.configure(state=DISABLED)
            self.all_qlines.configure(state=DISABLED)

# Following is used to insert file text as appropriate in the display
# window (lower panel).  Most of the real work is performed in
# fill_file_display.  NOTE: DeletedFileError has become vestigial since
# theory contents are now stored in the database.  The try-except construct
# has been retained for possible future use.

    def view_file(self, content_view, attached, fetch_needed, item_num,
                  force_display=0, title_text=None,
                  highlight_loc='', path_suffix='', link_names=None, is_lib=0):
        nonexistent = 0
        if attached and self.selected_index != None and \
           self.prev_find_state[self.selected_index]:
            self.prev_find_state[self.selected_index
                                 ].save_occurrence_state(content_view)
        if fetch_needed:
            try:
                fill_file_display(self, content_view, attached, item_num,
                                  force_display, title_text,
                                  highlight_loc, path_suffix, is_lib=is_lib)
            except DeletedFileError:
                nonexistent = 1
        if not attached: return
#        if self.selected_index != None and \
#           self.prev_find_state[self.selected_index]:
#            self.prev_find_state[self.selected_index
#                                 ].save_occurrence_state(content_view)
        if nonexistent: return
        abs_path = self.path_list[item_num][1]
	collec_id = self.path_list[item_num][-1]

        lib_name, thy_file = os.path.split(abs_path)
        thy_file_name, file_ext = os.path.splitext(thy_file)
	if file_ext == '.pvs':
            self.app.on_import_chain(imported=self.on_import_chain[item_num])
        else:
            self.app.on_import_chain(off=True)

        if link_names:
            lname = self.item_attributes[item_num][2]    # library name
            append_theory_links(self, lname, link_names,
                                collections[collec_id][0])

        if os.path.isabs(abs_path) and os.path.exists(abs_path):
            mod_time = os.path.getmtime(abs_path)
        else:
            mod_time = getIndexedSizeModTime(collec_id, abs_path)[0]
        if not content_view:
            self.restore_find_state(0, fetch_needed, item_num, mod_time)
            return
        if not self.find_state[item_num]:
            # self.sites should be set by fill_file_display
            # set site indices to -1 so first increment goes to instance 0
            self.cur_site = [ -1 for s in self.sites ]
            self.hterm_total_count =    [ len(s) for s in self.sites ]
        self.restore_find_state(1, fetch_needed, item_num, mod_time)
        if self.after_display_action:
            self.after_display_action()
            self.after_display_action = None

# Following is used to insert a proof script in the display
# window (lower panel).  Most of the real work is performed in
# fill_proof_display.  Always invoked in content_view mode.

    def view_proof(self, attached, item_num, title_text):
        nonexistent = 0
        if attached and self.selected_index != None and \
           self.prev_find_state[self.selected_index]:
            self.prev_find_state[self.selected_index].save_occurrence_state(1)
        try:
            fill_proof_display(self, attached, item_num, title_text)
        except DeletedFileError:
#            trace = StringIO()
#            print_exc(100, trace)
#            print trace.get_value()
            # currently proofs come from DBs, not files
            nonexistent = 1
        if not attached: return
#        if self.selected_index != None and \
#           self.prev_find_state[self.selected_index]:
#            self.prev_find_state[self.selected_index].save_occurrence_state(1)
        if nonexistent: return

        self.app.on_import_chain(off=True)
        if not self.find_state[item_num]:
            # self.sites should be set by fill_proof_display
            # set site indices to -1 so first increment goes to instance 0
            self.cur_site = [ -1 for s in self.sites ]
            self.hterm_total_count =    [ len(s) for s in self.sites ]
        self.restore_find_state(1, 1, item_num, None)
        if self.after_display_action:
            self.after_display_action()
            self.after_display_action = None

# Following is used to insert a step docstring in the display
# window (lower panel).  Most of the real work is performed in
# fill_step_display.  Always invoked in content_view mode.

    def view_step(self, attached, item_num, title_text):
        nonexistent = 0
        if attached and self.selected_index != None and \
           self.prev_find_state[self.selected_index]:
            self.prev_find_state[self.selected_index].save_occurrence_state(1)
        try:
            fill_step_display(self, attached, item_num, title_text)
        except DeletedFileError:
            # currently steps come from DBs, not files
            nonexistent = 1
        if not attached: return
        if nonexistent: return

        self.app.on_import_chain(off=True)
        if not self.find_state[item_num]:
            # self.sites should be set by fill_step_display
            # set site indices to -1 so first increment goes to instance 0
            self.cur_site = [ -1 for s in self.sites ]
            self.hterm_total_count =    [ len(s) for s in self.sites ]
        self.restore_find_state(1, 1, item_num, None)
        if self.after_display_action:
            self.after_display_action()
            self.after_display_action = None

# Look up proof script using existing attributes and DB queries.
# Return None or (decl name, lib name, theory name, script).

    def look_up_proof(self, item_num):
	collec_id = self.path_list[item_num][-1]
        decl_name, thy_name, lib_name, decl_id = \
            self.item_attributes[item_num][0:4]
	attribs = get_decl_proof_attributes(collec_id, decl_id)
	proof_name, proof_type, run_date, run_time, num_steps, \
	    proof_status, description, script = attribs[:-1]
        if proof_name:
            return (decl_name, lib_name, thy_name, script)
        else:
            return None


    def restore_find_state(self, content_view, fetch_needed, index, mod_time):
        def set_new_pattern():
#            if not (using_ttk or using_tile):
#                self.find_entry.config(bg=colors['text_bg_color'])
            self.find_entry.delete(0, END)
            self.find_entry.insert(END, self.find_entry.get())
            self.find_state[index].prev_occ_values[1] = [1, 0, 0]
#        file_changed = self.find_state[index] and \
#                       (mod_time != self.find_state[index].file_mtime)
#        if self.find_state[index] and not file_changed:
        if self.find_state[index]:
            if fetch_needed: 
                self.find_state[index].restore_occurrence_state(content_view,
                                                                mod_time)
                if not self.find_entry.get(): set_new_pattern()
        else:
            # following unmaps occurrence count window as a side effect
            self.find_state[index] = \
                Find_State(self, self.display, content_view, mod_time)
            set_new_pattern()
#            if file_changed:
#                self.find_state[index].show_file_changed()

# Perform cleanup of resources when this tabbed page is deleted.

    def clean_up(self):
        for temp_file in self.displayed_before:
            if temp_file:
                try:    os.remove(temp_file)
                except: pass


#===============

# Key variables need to maintain the following invariant, which is
# checked after every action if enabled by check_assertions flag.
# The assertion is not too thorough; basically it ensures
# that data items in certain instance attributes have suitable values.
# This checking is still less than full consistency.

    def state_invariant(self):
        return self.state_invariant_details()

    def state_invariant_details(self):
        if self.selected_index != None and \
           self.selected_index >= len(self.path_list):
            return 'selected_index out of range: %s\n\n' % self.selected_index
        
        for i in range(len(self.find_state)):
            s = self.find_state[i]
            if s != None and not isinstance(s, Find_State):
                return 'find_state[%d] invalid type: %s\n\n' % (i, s)
            
        if self.after_display_action != None:
            return 'after_display_action: %s' % self.after_display_action

        if self.selected_index != None and \
           self.find_state[self.selected_index]:
            fs = self.find_state[self.selected_index]
            if fs.currently_showing and len(fs.currently_showing) < 4:
                return 'currently_showing: %s' % fs.currently_showing

        return 0    # no problems detected

#===============
