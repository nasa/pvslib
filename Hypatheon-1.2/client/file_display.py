
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Support functions are provided to display "files" by filling a text widget
# with theory source text or virtual file contents.

import os, sys, string, glob
from time import strftime, localtime, asctime
from bisect import bisect_left

from client_globals import *
from widget_utils   import *

from db_operations     import *
from find_state        import many_threshold

mouse_over_delay  = \
    int(1000 * user_prefs.getfloat('Client', 'mouse_over_delay'))

starting_display_position = 1.0
tag_margin = 4

display_fonts = {'sans':  text_font,
                 'serif': serif_text_font,
                 'fixed': small_fixed_font}
file_hdr_font = ('TkDefaultFont', 10) if on_linux else text_font


#-----------------------------------------

# Note: these procedures were originally methods of QP_GUI_elements.

# The following function is used to insert file text as appropriate in
# the display window (lower panel if attached=true). The file's path
# and type are retrieved from self.path_list using item_num as an index.
# After that, processing proceeds based on file type and other attributes.

def fill_file_display(self, content_view, attached, item_num,
		      force_display, title_text,
		      highlight_loc='', path_suffix='', is_lib=0):
    self.starting_display_position = starting_display_position
    full_path, file_type = self.path_list[item_num][1:3]
    if path_suffix:
        full_path += path_suffix
        file_type = 'source/pvs'
    collec_id = self.path_list[item_num][-1]
    rel_path = self.queryResults[item_num][1]
    item_attribs = self.item_attributes[item_num]
    thy_name = item_attribs[1]
    displayed_file_type = file_type
    base_path, extension = os.path.splitext(full_path)
    extension = extension[1:].lower()
    indexed_size, indexed_mod_time = \
        getIndexedSizeModTime(collec_id, rel_path)

    if attached:
        header = self.file_header
        display = self.display
        display['state'] = NORMAL
        clear_header_display(self)
        display.configure(font=display_fonts['fixed'])
    else:
        display = scrolled_text_display(
                      title='Hypatheon - %s' % full_path,
                      geometry=window_geometry,
                      width=90, height=50, barwidth=11,
                      font=display_fonts['fixed'])
        display.configure(cursor='', padx=0, pady=0)
        header = display
    if os.path.isabs(full_path) and os.path.exists(full_path):
        mod_time = os.path.getmtime(full_path)
    else:    # search-only mode (no PVS files)
        mod_time = 0

    # Derive file attributes and format a header to display at the
    # top of the text widget.
    if home_dir and full_path.startswith(home_dir):
        tilde_path = full_path.replace(home_dir, '~')
    else:
        tilde_path = full_path
    attribs1 = "Path:   %s       Length:  %s \n" \
               % (tilde_path, approx_size(indexed_size))
    header.insert(END, attribs1, 'file_header')
    header.mark_set('excerpted_length', header.index('end - 2 char'))

    attribs2 = "Modified:  %s  " % mod_time_ago(indexed_mod_time)

    if mod_time and indexed_mod_time < mod_time:
        mod_time_status = '*** Latest is newer ***    '
    else:
        mod_time_status = '    '
    header.insert(END, attribs2 + mod_time_status, 'file_header')
#    self.starting_display_position += 1.0

    header.insert(END, "Lines:  \n", 'file_header')
    header.mark_set('line_count', header.index('end - 2 char'))

    header.insert(END, '\n', 'color_separator')
    header.tag_configure('file_header', foreground=colors['item_meta_fg'],
                          background=colors['headline_select'],
                          font=file_hdr_font)  ###
    header.tag_configure('color_separator', font=spacer_font,
                          background=colors['headline_select'])

    def display_content(content_tuple):
        body, addendum, body_lines, add_lines = content_tuple
        display.insert(END, '\n')
        begin = float_tk(display.index('end - 1 char'))
        content = body + addendum
        if content_view and not attached:
            # add line numbers for separate window display
            content_lines = [ '%3s  %s' % (n+1, line)
                              for n, line in enumerate(content.splitlines()) ]
        else:
            # splitting needed to clean up files with CRLF line endings
            content_lines = content.splitlines()
        content_lines.append('')
        content = '\n'.join(content_lines)
        display.insert(END, content, 'requested_insert')
        if addendum:
            line_count = '%s (%s+%s)' % (body_lines + add_lines,
                                         body_lines, add_lines)
        else:
            line_count = str(body_lines)
        header.insert('line_count', line_count)
        display.tag_configure('requested_insert', rmargin=tag_margin,
                              lmargin1=tag_margin, lmargin2=tag_margin)
        if highlight_loc == 'nil':
            pass
        elif highlight_loc:
            locs = highlight_loc.split()
            start  = int(locs[0]) + int(begin) - 1
            finish = int(locs[2]) + int(begin)
            display.tag_add('highlight_region',
                            '%s.0' % start, '%s.0' % finish)
            display.tag_configure('highlight_region',
                                  background=colors['headline_select'])
            # ensure both top and bottom are visible
            display.see('%s.0' % (finish + 4))
            display.see('%s.0' % (start - 4))

    display_content(get_full_content_plus(full_path, collec_id,
                                          is_lib, thy_name))
    if content_view:
        create_decl_name_tags(self)
        site_count = \
            highlight_search_terms(self, attached, display, item_num, 1, '')
        if attached:
            self.path_label.configure(text='%s -- %s term instances'
                                      % (thy_name, site_count))
    else:
        if attached: self.path_label.configure(text=thy_name)
    display.tag_add('full_widget', '1.0', END)
    display.tag_configure('full_widget', rmargin=tag_margin,
                          lmargin1=tag_margin, lmargin2=tag_margin)
    display['state'] = DISABLED


# The following function is used to insert a proof script in
# the display window (lower panel if attached=true). 

def fill_proof_display(self, attached, item_num, title_text=''):
    # Derive proof attributes and format a header to display at the
    # top of the text widget.
    collec_id = self.path_list[item_num][-1]
    decl_attribs = self.item_attributes[item_num]
    decl_id = decl_attribs[3]

    if decl_attribs[6] == 'judgement':   # decl_type
        j_tccs = get_judgement_tccs(collec_id, decl_id)
        if len(j_tccs) == 1:
            decl_id = j_tccs[0][0]    # use TCC id instead of judgement's
            attribs = get_decl_proof_attributes(collec_id, decl_id)
            proof_name, proof_type, run_date, run_time, num_steps, \
                proof_status, description, script = attribs[:-1]
        elif len(j_tccs) == 0:
            decl_id = -1    # indicate absence of proof
            proof_name, proof_type, run_date, run_time, num_steps, \
                proof_status, description = ('',) * 7
            script = "\nThis judgement has no proof because it was " \
                     "subsumed by a TCC or another judgement."
        else:
            decl_name, thy_name, lib_name = decl_attribs[:3]
            path = ' %s @ %s ' % (lib_name, thy_name)
            j_proof_terms = (decl_name, '', path, 'j_proof')
            self.app.gui.invoke_query_handler(terms=j_proof_terms,
                                              explicit_query=0)
            return
    else:
        attribs = get_decl_proof_attributes(collec_id, decl_id)
        proof_name, proof_type, run_date, run_time, num_steps, \
            proof_status, description, script = attribs[:-1]

    # attribs = get_decl_proof_attributes(collec_id, decl_id)
    # proof_name, proof_type, run_date, run_time, num_steps, \
    #     proof_status, description, script = attribs[:-1]
    if not title_text: title_text = proof_name
    if isinstance(run_time, int): run_time *= 0.001  # convert to secs

    self.starting_display_position = starting_display_position
    if attached:
        header = self.file_header
        display = self.display
        display['state'] = NORMAL ####
        clear_header_display(self)
        display.configure(font=display_fonts['fixed'])
        header_spacing = 0
    else:
        display = scrolled_text_display(
                      title='Hypatheon - %s' % title_text,
                      geometry=window_geometry,
                      width=80, height=50, barwidth=11,
                      font=display_fonts['fixed'])
        display.configure(cursor='', padx=0, pady=0)
        header = display
        header_spacing = 6

    attribs1 = "Proof:  %s    Run date:  %s\n" % \
               (proof_name, run_date) 
    header.insert(END, attribs1, 'file_header')
    attribs2 = "Status:  %s    Run time:  %s sec    Steps:  %s" % \
               (proof_status, run_time, num_steps)
    header.insert(END, attribs2, 'file_header')
    header.insert(END, "    Lines:  \n", 'file_header')
    header.mark_set('line_count', header.index('end - 2 char'))
    header.insert(END, '\n', 'color_separator')

    header_bg = colors['headline_select']
    header.tag_configure('file_header', foreground=colors['item_meta_fg'],
                         background=header_bg, font=file_hdr_font,  ###
                         spacing1=header_spacing)
    header.tag_configure('color_separator', font=spacer_font,
                          background=header_bg)

    if decl_id < 0:
        decl_body = ['']
    else:
        decl_body = \
            get_declaration_body(collec_id, decl_id)[0].split('\n') \
            or ['Declaration unavailable']
    display.insert(END, '%s\n' % decl_body[0], 'decl_body1')
    display.tag_configure('decl_body1', background=header_bg, spacing1=6)
    if len(decl_body) > 2:
        display.insert(END, '%s\n' % '\n'.join(decl_body[1:-1]),
                       'decl_body2')
        display.tag_configure('decl_body2', background=header_bg)
    if len(decl_body) > 1:
        display.insert(END, '%s\n' % decl_body[-1], 'decl_body3')
        display.tag_configure('decl_body3', background=header_bg, spacing3=8)
    else:
        display.tag_configure('decl_body1', spacing3=10)
    display.insert(END, 'Proof script:\n', 'script_label')
    display.tag_configure('script_label', spacing1=6)

    def display_content_insert(content, highlight_loc=''):
        begin = float_tk(display.index('end'))
        display.insert(END, content, 'requested_insert')
        delta = int(float_tk(display.index('end linestart')) - begin - 1)
        line_count = str(delta)
        header.insert('line_count', line_count)
        display.tag_configure('requested_insert', rmargin=tag_margin,
                              lmargin1=tag_margin, lmargin2=tag_margin)
        if highlight_loc == 'nil':
            pass
        elif highlight_loc:
            locs = highlight_loc.split()
            start  = int(locs[0]) + int(begin) - 1
            finish = int(locs[2]) + int(begin)
            display.tag_add('highlight_region',
                            '%s.0' % start, '%s.0' % finish)
            display.tag_configure('highlight_region',
                                  background=colors['headline_select'])
            # ensure both top and bottom are visible
            display.see('%s.0' % (finish + 4))
            display.see('%s.0' % (start - 4))

    display_content_insert(script)

    site_count = \
        highlight_search_terms(self, attached, display, item_num, 0, '')
    if attached:
        self.path_label.configure(text='Proof: %s -- %s term instances'
                                  % (title_text, site_count))
    display.tag_add('full_widget', '1.0', END)
    display.tag_configure('full_widget', rmargin=tag_margin,
                          lmargin1=tag_margin, lmargin2=tag_margin)
    display['state'] = DISABLED

# The following function is used to insert a proof rule/step in
# the display window (lower panel if attached=true). 

def fill_step_display(self, attached, item_num, title_text=''):
    # Derive step attributes and format a header to display at the
    # top of the text widget.
    collec_id = self.path_list[item_num][-1]
    step_name, step_type, library, docstring = \
        self.item_attributes[item_num][:-1]
    if not title_text: title_text = step_name

    self.starting_display_position = starting_display_position
    if attached:
        header = self.file_header
        display = self.display
        display['state'] = NORMAL ####
        clear_header_display(self)
        display.configure(font=display_fonts['fixed'])
    else:
        display = scrolled_text_display(
                      title='Hypatheon - %s' % title_text,
                      geometry=window_geometry,
                      width=80, height=50, barwidth=11,
                      font=display_fonts['fixed'])
        display.configure(cursor='', padx=0, pady=0)
        header = display

    attribs1 = "Step:  %s      Type:  %s\n" % \
               (step_name, step_type.capitalize())
    header.insert(END, attribs1, 'file_header')
    header.insert(END, '\n', 'color_separator')

    header_bg = colors['headline_select']
    header.tag_configure('file_header', foreground=colors['item_meta_fg'],
                         background=header_bg, font=file_hdr_font, spacing1=6)
    header.tag_configure('color_separator', font=spacer_font,
                         background=header_bg)

    display.insert(END, 'Documentation string:\n', 'step_label')
    display.tag_configure('step_label', background=header_bg,
                          spacing1=6, spacing2=6)
    display.insert(END, '\n%s\n' % docstring, 'docstring')
    display.tag_configure('docstring') #, spacing1=6)
#    display.tag_configure('docstring', spacing3=10)

    site_count = \
        highlight_search_terms(self, attached, display, item_num, 0, '')
    if attached:
        self.path_label.configure(text='Step: %s -- %s term instances'
                                  % (title_text, site_count))
    display.tag_add('full_widget', '1.0', END)
    display.tag_configure('full_widget', rmargin=tag_margin,
                          lmargin1=tag_margin, lmargin2=tag_margin)
    display['state'] = DISABLED ####

def clear_header_display(self):
    self.file_header.delete('1.0', END)
    self.file_header.tag_delete(*self.file_header.tag_names())
    self.display.delete('1.0', END)
    self.display.tag_delete(*self.display.tag_names())


# The following function is used to insert a list of referenced
# declarations in a separate display window.

def fill_refs_display(self, qtype, item_num, title_text=''):
    collec_id = self.path_list[item_num][-1]
    decl_name = self.item_attributes[item_num][0]
    decl_id   = self.item_attributes[item_num][3]
    if qtype == 'proof':
        db_fetch_fn = get_proof_references
	ref_label = "References from proof '%s'" % decl_name
    else:
        db_fetch_fn = get_decl_references
	ref_label = "References from declaration '%s'" % decl_name
    ref_list = db_fetch_fn(collec_id, decl_id)
    if ref_list:
        ref_list.sort()
	widths = [ max([len(r[i]) for r in ref_list])
		   for i in range(len(ref_list[0])) ]
	tab_stops, cum_width = [], 0
	for w in [4] + widths:
            cum_width += (w+1) * fixed_text_pixels
	    tab_stops.append(cum_width)
    else:
        tab_stops = ()

    if not title_text:
        title_text = 'Hypatheon - Declaration/Proof References'
    display = scrolled_text_display(
		  title=title_text, width=120, height=50, barwidth=11,
		  geometry='600x500'+window_geometry,
		  intro=ref_label, horiz_scroll=1, wrap='none',
		  tab_stops=tuple(tab_stops), font=display_fonts['fixed'])
    display.configure(cursor='', padx=3, pady=5)
	
    for n, ref_attr in enumerate(ref_list):
        display.insert(END, '%3d.\t%s\t%s\t%s\t%s' % ((n+1,) + tuple(ref_attr)))
	if (n+1) % 5:
            display.insert(END, '\n')
	else:
            display.insert(END, '\n\n')

def copy_refs_text(self, qtype, item_num):
    collec_id = self.path_list[item_num][-1]
    decl_name = self.item_attributes[item_num][0]
    decl_id   = self.item_attributes[item_num][3]
    if qtype == 'proof':
        db_fetch_fn = get_proof_references
	ref_label = "References from proof '%s'\n\n" % decl_name
    else:
        db_fetch_fn = get_decl_references
	ref_label = "References from declaration '%s'\n\n" % decl_name
    ref_list = db_fetch_fn(collec_id, decl_id)
    if not ref_list:
        copy_text_clipboard(ref_label + 'None\n')
	return
    ref_list.sort()
    widths = [ max([len(r[i]) for r in ref_list])
	       for i in range(len(ref_list[0])) ]
    template = '%%3d.  %%-%ds  %%-%ds  %%-%ds  %%-%ds' % tuple(widths)
    result = [ref_label]
    for n, ref_attr in enumerate(ref_list):
        result.append(template % ((n+1,) + tuple(ref_attr)))
	if (n+1) % 5:
            result.append('\n')
	else:
            result.append('\n\n')
    copy_text_clipboard(''.join(result))
    

# Highlight declaration names within a displayed theory.  Bindings are
# no longer placed on them because identifiers can now be pulled from
# anywhere within a theory.

def create_decl_name_tags(self):
    win = self.display
    reset_display_state(self)
    win.after_cancel(self.track_motion_id)    # clear pending display actions
    num_lines = int(float_tk(win.index('end'))) - 1

    self.decl_line_nums = []
    self.decl_names = []
    for i in range(1, num_lines):
	line_i = win.get('%d.0' % i, '%d.0 lineend' % i)
        # pattern filters out VAR and other false cases
	id_match = decl_name_pattern.match(line_i)
	if id_match:
            name_tag = 'decl_%s' % i
	    start, end = id_match.start(1), id_match.end(1)
	    win.tag_add(name_tag, '%d.%d' % (i, start), '%d.%d' % (i, end))
	    win.tag_configure(name_tag, foreground='blue')
#	    win.tag_bind(name_tag, '<Button-1>', find_refs)
	    self.decl_line_nums.append(i)
	    self.decl_names.append(id_match.group(1))

def reset_display_state(self):
    self.ident_motion_ticks = 0
    self.ident_motion_cur_ident = ''
    self.track_motion_id = 0
    self.ident_balloon = None

# Allow users to invoke actions by right-clicking on arbitrary identifiers.
# Also provide left-click to initiate name search, and middle-click to
# initiate ref search.

def identifier_context_popup(self, content_view, query_type):
    if not content_view:
        return              # no context menu for this case
    self.ident_search_refs = 0
    self.ident_query = None     # some bindings save pre-computed queries here
    win = self.display
    def get_identifier(loc=None):
        if loc == None:
	    loc = self.display_ident_location
	# find start and end of identifier, allowing for '?' characters
	id_beg, id_end = win.index(loc+' wordstart'), win.index(loc+' wordend')
	while win.get(id_end) == '?':
            id_end = win.index(id_end + ' + 1 char wordend')
	while win.get(id_beg + ' - 1 char') == '?':
            id_beg = win.index(id_beg + ' - 2 char wordstart')
	c = win.get(id_end + ' - 1 char')
	if not (c.isalnum() or c in ('_', '?')):
            id_end = win.index(id_end + ' - 1 char')
        return win.get(id_beg, id_end)
    def search_for(loc=None, event=None, refs=0):
        if self.ident_query:
	    self.app.gui.invoke_query_handler(terms=self.ident_query,
					      explicit_query=0)
	    self.ident_query = None
	    return
        if not loc and event:
            loc = win.index('@%d,%d' % (event.x, event.y))
        submit_identifier_query(self.app.gui, get_identifier(loc), loc,
				refs=refs or self.ident_search_refs)
	self.ident_search_refs = 0

    reset_display_state(self)
    def wake_track_motion(event):
        if self.ident_motion_ticks == 0:
            self.track_motion_id = win.after(10, self.track_motion)
	# reset tick count when motion detected; will go quiescent in 3 sec
        self.ident_motion_ticks = 3
    def clear_mouse_over_balloon(*args):
	if self.ident_balloon:
	    self.ident_balloon.destroy()
	    self.ident_balloon = None
            win.after_cancel(self.ident_clear)
    def track_motion_proc():
	px, py = win.winfo_pointerxy()
	ex, ey = px - win.winfo_rootx(), py - win.winfo_rooty()
        loc = win.index('@%d,%d' % (ex, ey))
	ident = get_identifier(loc).strip()
        # ey could be negative if mouse is in upper panel
	if ey >= 0 and ident and ident == self.ident_motion_cur_ident:
            # previously found identifier still here; show it first time
            if not self.ident_balloon:
                self.ident_balloon = \
		    show_decl_balloon(self, win, ident, loc, ex, ey)
		# make sure it won't linger; remove after a few seconds
		self.ident_clear = win.after(8000, clear_mouse_over_balloon)
	else:
            # no identifier at this location; clear old display; OR
            # new identifier encountered; display at next time step
	    clear_mouse_over_balloon()
	    self.ident_motion_cur_ident = ident
        if self.ident_motion_ticks > 0:
            self.track_motion_id = win.after(mouse_over_delay, self.track_motion)
            self.ident_motion_ticks -= 1
    if query_type == 'step':
        self.track_motion = null_proc
    else:
        self.track_motion = \
	    EventHandler('Track mouse motion in display', track_motion_proc, 0)
		
    if query_type == 'step':
        def get_step_name():
            return self.item_attributes[self.selected_index][0]
        identifier_menu = \
	    [ ('Copy Step Name',
  	       lambda : copy_text_clipboard(get_step_name()), 'copy_step'), ]
        if app_state['exec_mode'] == 'PVS-client':
            identifier_menu.extend(
		[ None,
		  ('Submit Proof Step to PVS',
		   lambda cmd=self.submit_prover_cmd(get_step_name, ''): cmd(),
		   'submit_step') ] )
    else:
        identifier_menu = \
	    [ ('Search for Identifier', search_for),
	      ('Search for References', lambda : search_for(refs=1)),
	      None,
	      ('Copy Identifier',
  	       lambda : copy_text_clipboard(get_identifier()), 'copy_ident'),
	      ('Copy Identifier with Quotes',
	       lambda : copy_text_clipboard('"%s"' % get_identifier())), ]
        if app_state['exec_mode'] == 'PVS-client':
            identifier_menu.extend(
	        [ None,
		  ('Submit Lemma Command to PVS',
		   lambda cmd=self.submit_prover_cmd('Lemma', get_identifier):
			   cmd()),
		  ('Submit Use Command to PVS',
		   lambda cmd=self.submit_prover_cmd('Use', get_identifier):
			   cmd()),
		  ('Submit Rewrite Command to PVS',
		   lambda cmd=self.submit_prover_cmd('Rewrite', get_identifier):
			   cmd()),
		  ('Submit Custom Prover Command...',
		   lambda : invoke_prover_cmd_custom(self, get_identifier())),
		  ('Submit With Fully Qualified Name...',
		   lambda : invoke_prover_cmd_full(self, get_identifier())),
		  ] )
    menu, tag_dict = add_popup_menu(self.display, identifier_menu)
    init_enabled_tags = tag_dict.keys()
    init_enabled = [ tag_dict[t] for t in init_enabled_tags ]

    def display_popup(event):
	self.display_ident_location = win.index('@%d,%d' % (event.x, event.y))
	for i in init_enabled:
	    menu.entryconfigure(i, state=NORMAL)
	try:
	    menu.tk_popup(*menu.winfo_pointerxy())
	except TclError:
	    return     # happens on OS X when application window not on top
    bind_right_button(win.bind,
		      EventHandler('Display popup identifier menu',
				   display_popup))
    bind_middle_button(win.bind,
	     EventHandler('Search for ident refs',
			  lambda ev: search_for(event=ev, refs=1)))
    win.bind('<Button-1>',
	     EventHandler('Search for identifier',
			  lambda ev: search_for(event=ev)))
    if mouse_over_delay:
        win.bind('<Motion>',
		 EventHandler('Mouse-over identifier', wake_track_motion, 0))
    win.bind('<Leave>', EventHandler('Clear mouse-over balloon',
				     clear_mouse_over_balloon, 0))

# Pop up a top level window to collect and submit a custom prover command.

def create_prover_cmd_window(fr, message, decl, submit_prvr_cmd, cmd_focus=1):
    top_fr = Frame(fr)
    Label(top_fr, text='Name: ').pack(side=LEFT)
    decl_entry = entry_widget(top_fr, width=40)
    decl_entry.insert(0, decl)
    decl_entry.pack(side=LEFT, padx=5, fill=X, expand=YES)
    top_fr.pack(padx=20, pady=10)
    
    Message(fr, text=display_messages[message], foreground='dark blue',
            aspect=600, justify=LEFT).pack(padx=20, pady=10)
    
    cmd_fr = Frame(fr)
    Label(cmd_fr, text='Command:').pack(side=LEFT)
    cmd_entry = entry_widget(cmd_fr, width=40)
    cmd_entry.pack(side=LEFT, padx=5, fill=X, expand=YES)
    cmd_entry.insert(0, '(use "%s")')
    cmd_fr.pack(padx=20, pady=5, fill=X)
    if cmd_focus: cmd_entry.focus_set()
    else:         decl_entry.focus_set()

    def submit_cmd(*args):
        cmd = cmd_entry.get()
	if '%s' in cmd:
	    cmd = cmd.replace('%s', decl_entry.get())
	fr.destroy()
        submit_prvr_cmd(cmd, 0)()
    submit_handler = EventHandler('Send custom prover command', submit_cmd, 0)
    cmd_entry.bind('<Return>', submit_handler)
    decl_entry.bind('<Return>', submit_handler)
    but_fr, buttons = \
        button_row(fr, (('Submit', submit_handler),
			('Cancel', lambda : fr.destroy() ),), )
    but_fr.pack(side=RIGHT, padx=20, pady=10)

def invoke_prover_cmd_full(self, decl):
    def make_window(fr):
        thy, lib = self.item_attributes[self.selected_index][1:3]
	if lib == 'prelude':
	    decl_str = '%s[--].%s' % (thy, decl)
	else:
	    decl_str = '%s@%s[--].%s' % (lib, thy, decl)
        create_prover_cmd_window(fr, 'invoke_prover_command_full',
				 decl_str, self.submit_prover_cmd, cmd_focus=0)
    pop_up_toplevel_window(make_window, (), 'Invoke Prover Command',
                           top_margin=5, bottom_margin=0)

def invoke_prover_cmd_custom(self, decl):
    def make_window(fr):
        create_prover_cmd_window(fr, 'invoke_prover_command_custom',
				 decl, self.submit_prover_cmd)
    pop_up_toplevel_window(make_window, (), 'Invoke Prover Command',
                           top_margin=5, bottom_margin=0)


def show_decl_balloon(self, parent, ident, loc, x, y):
    results, num_others = find_ident_decl_proof(self, ident.lower(), loc)
    if results:
        decl_id, thy, lib, collec_id = results[0]
        decl = get_declaration_body(collec_id, decl_id)[0] or ' '
	lines = decl.splitlines()
	margin = len(lines[0]) - len(lines[0].lstrip())
	all_lines = [ ' '+line[margin:]+' ' for line in lines ]
	all_lines.append('-----')
	all_lines.append(' %s @ %s' % (lib, thy))
	if num_others > 0:
	    if num_others == 1:
	        additional = ' *** 1 additional match found ***'
	    else:
	        additional = ' *** %d additional matches found ***' % num_others
            all_lines.append(additional)
	decl_display = '\n'.join(all_lines)
    elif num_others == None:
        return         # spurious invocation
    else:
        decl_display = ' No matches found '
    balloon = Label(parent, relief=SOLID, bd=1, text=decl_display,
		    justify=LEFT, font=display_fonts['fixed'],
		    bg=colors['headline_select'])
    rt_edge = parent.winfo_width()
    width, height = balloon.winfo_reqwidth(), balloon.winfo_reqheight()
    balloon.place(anchor=NE, x=min(rt_edge, x+width-10), y=max(0, y-height-10))
    return balloon

def find_ident_decl_proof(self, ref_name, loc):
    name, thy, lib = self.item_attributes[self.selected_index][:3]
    if self.now_showing == 'proof':
        decl_refs = get_relevant_proof_refs(name, thy, lib, ref_name)
	if not decl_refs:
            decl_refs = get_relevant_decl_refs(name, thy, lib, ref_name)
    else:
        line_num = int(float_tk(loc))
	index = max(1, bisect_left(self.decl_line_nums, line_num + 1))
        try:
	    name = self.decl_names[index - 1]
	except IndexError:
	    return None, None    # empty lists
        decl_refs = get_relevant_decl_refs(name, thy, lib, ref_name)
    if not decl_refs:
        decl_refs = get_all_decls_name(ref_name)
    if not decl_refs: return None, 0

    query = "SELECT declaration_id, theory, library from Declarations " \
	    "WHERE name_id = %s and theory = '%s' and library = '%s'"
    decl_ids = query_some(query % decl_refs[0][:-1], decl_refs[0][-1])
    return decl_ids, len(decl_refs) + len(decl_ids) - 2

def submit_identifier_query(app_gui, identifier, loc,
			    search_types=None, refs=0):
    ident = identifier.strip()
    if not ident: return
    ident = '"%s"' % ident

    # normally search for declarations first, then other types,
    # but caller can override
    if search_types:
        types = search_types
    elif refs:
        types = ('decl', 'proof', 'module', 'library')
    else:
        types = ('decl', 'module', 'library')
    for result_type in types:
        # Could use narrow search for decls:
        # results = find_ident_decl_proof(self, ident, loc)
        # but wouldn't be a user visible (and alterable) query
        if refs:
            search_terms = ('', ident, '', result_type)
	else:
            search_terms = (ident, '', '', result_type)
        results = app_gui.invoke_query_handler(terms=search_terms,
					       explicit_query=0)
	if results: return
    status_prompt(app_gui.status_msg,
		  'No matches for selected identifier.', 'red')


# When the current item is a library, append links/buttons (after the top
# theory) to be used to select a theory for display.  Clicking a theory name
# causes a query for that theory to be initiated.

def append_theory_links(self, lib_name, link_names, collec_name):
    def force_thy_search(dummy, query):
        # action will be performed by search_for binding
        self.ident_query = query

    link_names.sort()
    win = self.display
    win['state'] = NORMAL ####
    win.insert(END, '\n\n\nSelect a name to display its theory:\n\n',
	       'mod_name_header')
    win.tag_configure('mod_name_header', foreground=colors['muted_red'],
		      font=title_font)
    for i in range(len(link_names)):
        thy_name_tag = 'module_%s' % i
	win.insert(END, '    ' + link_names[i] + '\n', thy_name_tag)
	win.tag_configure(thy_name_tag, foreground='blue', spacing3=6)
	thy_query = ("'%s'" % link_names[i], '',
                     "[%s] %s@" % (collec_name, lib_name), 'module')
	win.tag_bind(thy_name_tag, '<Button-1>',
		     EventHandler('Select library module',
				  lambda d, q=thy_query: force_thy_search(d, q)))
	### add right click display options?
    win.insert(END, '\n\n')
    win['state'] = DISABLED ####


# All search terms are first highlighted in color.  Locations for each
# term are saved in a list (self.sites) to facilitate scrolling later.
# Terms are located using Tk's regular expression search.  Patterns
# are adjusted as needed for source files and others that use special
# characters in identifiers or words.

def highlight_search_terms(self, attached, display, item_num,
			    name_only, specials):
    self.sites = []
    refs_terms = self.headlines[item_num][3][:]
    # Filter out rightmost part of fully/partially qualified ref terms.
    def form_ref_term(term):
        fields = term.split('.')
	if len(fields) > 1 and fields[-1]: return fields[-1]
	fields = fields[0].split('@')
	if len(fields) > 1 and fields[-1]: return fields[-1]
	elif fields[0]: return fields[0]
	return ''
    refs_terms = filter(None, map(form_ref_term, refs_terms))
    name_terms = self.headlines[item_num][2][:]
    midpoint = len(name_terms)
    ### includes negative terms ???
    num_name_terms = \
	highlight_search_term_list(self, attached, display, item_num, specials,
				   name_terms, name_only)
    num_refs_terms = \
	highlight_search_term_list(self, attached, display, item_num, specials,
				   refs_terms, 0, midpoint)
    return num_name_terms + num_refs_terms

def highlight_search_term_list(self, attached, display, item_num, specials,
			       search_terms, name_only, starting_term=0):
	search_terms = filter(None, search_terms)
        # certain specials need to be escaped in patterns
        esc_specials = specials.replace('-','\-').replace(']','\]')
        # creates tags actual_<term_num>_<site_num> in display
        # possibly creates tags missing_<term_num>
        def add_missing(count, term_num, term):
            if count: return
            display.insert(END, "\n")
            missing_tag = 'missing_%s' % term_num
            display.insert(END, "No instances of term '%s' exist.\n" % term,
                           missing_tag)
            display.tag_configure(missing_tag, foreground=term_color)
        if not search_terms: return 0
        if attached:
            # display term sites: [ [site,...],... ]
            for i in range(len(search_terms)):  self.sites.append([])
            ### might not need sites: can derive from tag_ranges
        site_count = 0
        term_num = starting_term
        next = self.starting_display_position   # '1.0'
        term_color = colors['term_occ_fg']

	def esc_map_wildcars(str):
            return regexp_escape(str).replace('%', r'\w*').replace('_', r'\w')

	def make_new_pattern(term, mode):
            # term can contain embedded wildcards but not on the ends
	    # mode == 0: pattern anchors a term at word/identifier boundaries
	    # mode == 1: term matches anywhere within a word
            if name_only:
                esc_term = esc_map_wildcars(term)
		pattern  = r'^ *\w*%s\w* *(:|[([{].*:)' % esc_term
		### add word boundary version?
	    elif mode == 1:
                esc_term = esc_map_wildcars(term)
                pattern  = esc_term
            elif term.isalnum():
                esc_term = term
                pattern  = r'(\W|_|^)%s(\W|_|$)' % esc_term
            else:
                esc_term = esc_map_wildcars(term)  ## re.escape(term)
                pattern  = r'([^\w%s]|^)%s([^\w%s]|$)' \
			   % (esc_specials, esc_term, esc_specials)
	    return esc_term, pattern

	match_len = IntVar()
        term = search_terms[0]
        site_num, mode = 0, 1   ### set mode to allow partial word matches
	esc_term, pattern = make_new_pattern(term, mode)
        while search_terms:
	    # first pattern matches term and context; second only term
	    start = display.search(pattern, next, END, regexp=1, nocase=1)
            if term and start and site_num < many_threshold:
                start = display.search(esc_term, start, END,
                                       regexp=1, nocase=1, count=match_len)
                tag = 'actual_%s_%s' % (term_num, site_num)
                end = '%s + %s chars' % (start, match_len.get())
                display.tag_add(tag, start, end)
                display.tag_configure(tag, foreground=term_color)
                next = end
                site_num += 1
                if attached: self.sites[term_num].append(float_tk(start))
	    elif site_num == 0 == mode:
	        mode += 1
	        esc_term, pattern = make_new_pattern(term, mode)
            elif len(search_terms) <= 1:   # terms exhausted
                if attached:
                    add_missing(site_num, term_num, term)
                    site_count += len(self.sites[term_num])
                    return site_count
                else:
                    return 0  ### do for detached as well?
            else:
                # no more matches with this term or max threshold reached
                if attached:
                    add_missing(site_num, term_num, term)
                    site_count += site_num
                    term_num += 1
                del search_terms[0]
                term = search_terms[0]
                site_num, mode = 0, 1
	        esc_term, pattern = make_new_pattern(term, mode)
                next = self.starting_display_position


def mod_time_ago(mod_time):
    return '%s ago  (%s)' % (approx_duration(time.time() - mod_time),
			     asctime(localtime(mod_time)))
