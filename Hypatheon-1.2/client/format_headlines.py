
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


import os, sys, string, glob, re
from time import strftime, localtime, asctime

from client_globals import *
from widget_utils   import *

from db_operations     import *
from find_state        import many_threshold


tag_margin = 4

show_decl_lines = user_prefs.getint('Client', 'show_decl_lines')

imported_color     = colors['item_meta_fg']
not_imported_color = colors['not_imported']


#-----------------------------------------


# Note: these procedures were originally methods of QP_GUI_elements.

# Format content headline items after query results are returned.
# Each item will be described by a title line, one or more word context
# lines, and a path/info line.  Tk Text widget tags are used to identify
# and color alternating regions.

def format_headlines(self, results, items, q_parsed, view_size):
    # Item tuples:  (file_id, abs_path, module_name, rank, decl_id)
    # Tags created: headline_<item_num>, headline_text
    #               title_<item_num>, path_<item_num>
    #               term_<item_num>_<term_num>
    global display_state, default_display
    self.get_next_attrib_increment(view_size)    # fetch new batch of attribs
    if self.q_type[0] == 'proof':
	display_state, default_display = 'proof', 'proof_next'
    else:
	display_state, default_display = 'theory', 'theory_next'
    self.now_showing = display_state

    win = self.path_widget
    win.configure(state=NORMAL)
    view_start = self.num_qlines
    if view_size == -1: view_size = len(items) - view_start  # do the rest
    if 0 < view_start < len(items):
	see_pt = win.index(END)
    else:
	see_pt = None

    def filter_terms(terms):
	# remove negative terms and outer wildcard characters
	return [ term.strip('%') for term in terms if term[0] not in '-!' ]

    if view_start == 0:
	self.headlines = []
	self.item_button_tags = []
	self.name_terms    = q_parsed[0]
	self.content_terms = q_parsed[1]
	self.bare_name_terms = filter_terms(self.name_terms)
	self.bare_content_terms = filter_terms(self.content_terms)
    headline_bg = (colors['headline_alt'], 'white')


    # Each search term is given a button for advancing to
    # the next occurrence in the file_display.

    def add_term_buttons(item_num):
	for button in self.term_button_list: button.destroy()
	self.term_button_list = []
	term_list = self.bare_name_terms + self.bare_content_terms
	midpoint = len(self.bare_name_terms)
	button_row = self.name_button_row
	for term_num in range(len(term_list)):
	    if term_num == midpoint:
		button_row = self.refs_button_row
	    term_str = term_list[term_num].strip()
	    if term_str == '': continue
	    term_button = Label(button_row, text=term_str, font=title_font)
	    self.term_button_list.append(term_button)
	    term_button.bind(
		'<Button-1>',
		EventHandler('Term search button', 
			     lambda ev, args=(item_num, term_num, 1):
				 advance_to_term(self, *args)))
	    term_button.bind(
		'<Shift-Button-1>',
		EventHandler('Term search button reverse', 
			     lambda ev, args=(item_num, term_num, -1):
				 advance_to_term(self, *args)))
	    term_button.bind('<Enter>',
			     lambda ev, tb=term_button: tb.config(fg='red'))
	    term_button.bind('<Leave>',
			     lambda ev, tb=term_button: tb.config(fg='black'))
	    term_button.pack(side=LEFT, padx=5)

    # If the Show Theory label is clicked, the declaration's theory
    # is displayed in the lower panel.

    def show_file_action(collec_id, fetch, item_num, title_text,
			 item_loc, path_suffix):
	global display_state
	self.prev_find_state = self.find_state
	self.find_state      = self.find_state_main
	if self.q_type[0] == 'library':
	    lib_id = results[item_num][4]
	    thy_names = get_library_module_names(collec_id, lib_id)
	else:
	    thy_names = None
	self.view_file(1, 1, fetch, item_num, 0, title_text,
		       highlight_loc=item_loc, path_suffix=path_suffix,
		       link_names=thy_names,
		       is_lib=(self.q_type[0] == 'library'))
	self.now_showing = display_state = 'theory'

    # If the Show Proof label is clicked, the declaration's proof
    # is displayed in the lower panel.

    def show_proof_action(collec_id, decl_id, item_num, title_text):
	global display_state
	self.prev_find_state = self.find_state
	self.find_state = self.find_state_alt
	self.view_proof(1, item_num, title_text)
	self.now_showing = display_state = 'proof'


    def show_step_action(collec_id, decl_id, item_num, title_text):
	global display_state
	self.prev_find_state = self.find_state
	self.find_state = self.find_state_alt
	self.view_step(1, item_num, title_text)
	self.now_showing = display_state = 'step'

    # When an item is selected (clicked in its region), the file is
    # displayed and the item is highlighted.

    def item_action(collec_id, decl_id, item_num, term_num,
		    title_text, item_loc, path_suffix):
	global display_state
	win.configure(state=NORMAL)
	if self.selected_index != None:
	    win.tag_configure('headline_%s' % self.selected_index,
		    background=headline_bg[self.selected_index % 2])
	fetch = item_num != self.selected_index
	win.tag_configure('headline_%s' % item_num,
			  background=colors['headline_select'])
	add_term_buttons(item_num)
	if self.q_type[0] == 'step':
	    show_step_action(collec_id, decl_id, item_num, title_text)
	elif self.q_type[0] != 'proof' and \
	   display_state in ('theory', default_display):
	    show_file_action(collec_id, 1,     ## force fetch
			     item_num, title_text, item_loc, path_suffix)
	elif self.q_type[0] == 'proof' and \
	     display_state in ('proof', default_display):
	    show_proof_action(collec_id, decl_id, item_num, title_text)
	else:
	    display_state = default_display # force view next time
	self.selected_index = item_num      # set after viewing file
	win.configure(state=DISABLED)
	eval_assertion(self.state_invariant, 'Post-action check')

    # If the title line is clicked, the occurrence counts are cleared
    # in addition to normal item actions.

    def title_action(item_num, term_num, title_text, mod_time):
	return
	# reset occurrence and highlighting
	win.configure(state=NORMAL)
	if self.find_state[item_num]:
	    self.find_state[item_num].clear_occurrence()
	self.find_state[item_num] = None
	self.after_display_action = lambda : self.display.see(1.0)
	for tag in self.item_button_tags[item_num]:
	    win.tag_configure(tag, foreground='red')
	win.configure(state=DISABLED)

    # If the lib@thy label is clicked, the library/theory text is
    # inserted into the Path search terms.

    def lib_thy_action(lib_thy_text):
	lib_thy = lib_thy_text.split('@')
	if len(lib_thy) == 2:
	    lib, thy = lib_thy
	    add_str = lib.strip() + '@' + thy.strip()
#	    add_str = os.path.join(lib.strip(), thy.strip() + '.pvs')
	else:
	    add_str = lib_thy_text.strip()
	self.reenter_query((None, None, add_str, None), 0, 2)

    # The text for each search term is turned into a "button" by
    # creating a tag and binding actions to it.

    def add_term_button(term_num, item_num, term_start, term_end,
			button_action):
	term_tag = 'term_%s_%s' % (item_num, term_num)
	win.tag_add(term_tag, term_start, term_end)
	win.tag_configure(term_tag, foreground='red')
	self.item_button_tags[item_num].append(term_tag)
	def invoke_button(delta=1):
	    win.configure(state=NORMAL)
	    for tag in self.item_button_tags[item_num]:
		win.tag_configure(tag, foreground='red')
	    # schedule advance_to_term call to happen after view_file
	    self.after_display_action = \
		lambda args=(item_num, term_num, delta): \
		    advance_to_term(self, *args)
	    win.tag_configure(term_tag,
			      foreground=colors['find_text_color'])
	    win.configure(state=DISABLED)
	if button_action:
	    win.tag_bind(term_tag, '<Button-1>',
			 EventHandler('Headline button forward',
				      lambda dummy: invoke_button(1)))
	    win.tag_bind(term_tag, '<Shift-Button-1>',
			 EventHandler('Headline button backward',
				      lambda dummy: invoke_button(-1)))

## 	# All search terms, which have been demarcated using <b>...</b>,
## 	# are highlighted in red.

    # Headlines are snippets of the declaration and auxiliary information.

    def insert_headline(head_start, item_num, item_attributes, actuals, tags):
	all_tags = tags + ('headline_text',)
	first_part = get_headline(item_attributes, self.q_type[0],
				  self.content_terms, 20)
	decl_name_tag = 'decl_%s' % item_num
	decl_head = first_part.lstrip()
	id_match = ident_pattern.match(decl_head)
	if id_match:
	    n = id_match.end()
	    decl_lead, decl_rest = decl_head[:n], decl_head[n:]
	    win.insert(head_start, '%s.  %s' % (item_num + 1, decl_lead),
		       (decl_name_tag,) + all_tags)

	    if item_num < 999999 and self.on_import_chain[item_num] == 0:
		import_color = not_imported_color
	    else:
		import_color = imported_color
	    win.tag_configure(decl_name_tag,
			      foreground=import_color,
			      font=title_font, spacing1=2)
	else:
	    decl_rest = decl_head
	first_part = '\n    '.join( decl_rest.splitlines() )
	win.insert(END, first_part, all_tags)
	head_mid = win.index('%s lineend' % head_start)

    # For each item we look up its file attributes and add a line
    # that summarizes them along with the search rank value.

    initial_action = null_proc
    item_num = view_start
    if view_start == 0:
	### Insert a dummy first entry to fix unexplained font problem
	### with first line.  Delete after other entries are inserted.
	insert_headline(END, 999999,
			('zzz', '', '', '0', '0', 'zzz: lemma true'), '', ())
    else:
	win.delete('end - 3 lines', END)    # previous continuation count
    win.insert(END, '\n')
    item_start = win.index('end - 1 char')

    for item in items[view_start:view_start+view_size]:
	title_tag = 'title_%s' % item_num
	path_tag = 'path_%s' % item_num
	path_rest_tag = 'path_rest_%s' % item_num
	alt_disp_tag = 'alt_disp_%s' % item_num
	item_tag = 'headline_%s' % item_num
	abs_path, module_name, rank = item[1:4]
	rel_path = results[item_num][1]
	decl_id, collec_id = item[4:]

	# Get declaration name, theory name, library name,
	# decl location, decl body.
	item_attributes = self.item_attributes[item_num]
	if self.q_type[0] =='declaration':
	    decl_name, thy_name, lib_name, decl_id, item_loc, \
		decl_body, decl_type = item_attributes[0:7]
	    title_text = ' %s @ %s ' % (lib_name, thy_name)
	    path_suffix = ''
	elif self.q_type[0] == 'proof':
	    # proof_id = decl_id
	    decl_name, thy_name, lib_name, decl_id, proof_name, \
                decl_body, item_loc = item_attributes[0:7]
	    title_text = ' %s @ %s ' % (lib_name, thy_name)
	    path_suffix = ''
	elif self.q_type[0] == 'step':
	    # step_id = decl_id
	    step_name, step_type, lib_name, docstring = \
		item_attributes[0:4]
	    title_text = ' %s ' % lib_name
	    item_loc, path_suffix = '', ''
	elif self.q_type[0] == 'module':
	    thy_name, lib_name, module_type = item_attributes[1:4]
	    item_loc, path_suffix = '', ''
	    title_text = ' %s @ %s ' % (lib_name, thy_name)
	else:
	    lib_name = item_attributes[2]
	    if lib_name == 'prelude':
		item_loc, path_suffix = '', ''
	    else:
		item_loc, path_suffix = '', ''
	    title_text = ' %s ' % lib_name
	lib_thy_text = title_text
	term_actuals = []

        cached_size_mod = getIndexedSizeModTime(collec_id, rel_path)
        if cached_size_mod:
            file_len, mod_time = cached_size_mod
            if mod_time == 0:
                try:
                    mod_time = os.path.getmtime(os.path.join(pvs_lib_dir,
                                                             'prelude.pvs'))
                except:
                    pass   # ignore missing prelude file; mod_time stays 0
            fdate = strftime('%b %d %Y', localtime(mod_time))
        else:
            file_len, fdate = -1, 'Deleted    '
            mod_time = 0

	insert_headline(END, item_num, item_attributes, term_actuals, ())
	win.insert(END, '\n')
	abs_path_prefix = os.path.split(os.path.split(abs_path)[0])[0]
	if home_dir and abs_path_prefix.startswith(home_dir):
	    abs_path_prefix = abs_path_prefix.replace(home_dir, '~', 1)

	win.insert(END, '     %s ' % lib_thy_text, path_tag)
	win.tag_configure(path_tag, foreground=colors['muted_red'],
			  font=title_font, spacing3=4)
	win.tag_bind(path_tag, middle_button_event,
		     EventHandler('Query result lib/thy select',
			 lambda dummy, lib_thy=lib_thy_text:
				  lib_thy_action(lib_thy)))

	if isinstance(rank, int): rank_str = '%6d' % rank
	else:                     rank_str = '%6.2f' % rank
	win.insert(END, '\t%s    %s  [%s]' %
			(rank_str, fdate, collections[collec_id][0]),
		   path_rest_tag)
        if self.q_type[0] == 'declaration' and item_loc != 'nil' \
            and item_loc.split()[3] == '999':   # flagged during extraction
            abs_path_prefix = 'generated'
	win.insert(END, '  \t%s' % abs_path_prefix), # path_rest_tag)

	if self.q_type[0] == 'declaration':
	    if decl_type in ("formula", "judgement", "tcc"):
		win.insert(END, '      Show Proof', alt_disp_tag)
		win.tag_configure(alt_disp_tag, foreground='dark green',
				  font=title_font, spacing3=4)
                prf_action = lambda dummy, args=(collec_id, decl_id,
                                                 item_num, title_text): \
                                show_proof_action(*args)
		win.tag_bind(alt_disp_tag, '<Button-1>',
                             EventHandler('Show decl proof', prf_action))
	elif self.q_type[0] == 'proof':
	    win.insert(END, '      Show Theory', alt_disp_tag)
	    win.tag_configure(alt_disp_tag, foreground='dark green',
			      font=title_font, spacing3=4)
	    win.tag_bind(alt_disp_tag, '<Button-1>',
			 EventHandler('Show theory/file',
			     lambda dummy, args=(collec_id, 1,
						 item_num, title_text,
						 item_loc, path_suffix):
				 show_file_action(*args)))

	win.insert(END, '\n')
	win.tag_configure(path_rest_tag, foreground=colors['item_meta_fg'],
			  font=headline_font, spacing3=4)
	self.item_button_tags.append([])

	win.tag_add(item_tag, item_start, win.index('end - 1 char'))
	if item_num % 2: tag_bg = 'white'
	else:            tag_bg = colors['headline_alt']
	win.tag_configure(item_tag, background=tag_bg, rmargin=tag_margin,
			  lmargin1=tag_margin, lmargin2=tag_margin)
	win.tag_bind(item_tag, '<Button-1>',
		     EventHandler('Content file select',
				  lambda dummy,
					 args=(collec_id, decl_id,
					       item_num, 0, title_text,
					       item_loc, path_suffix):
				      item_action(*args)))
	win.tag_bind(title_tag, '<Button-1>',
		     EventHandler('Content file title select',
			 lambda dummy, args=(item_num, 0,
					     title_text, mod_time):
				  title_action(*args)))
	headline_context_menu(self,
			      lambda ev, pr: win.tag_bind(item_tag, ev, pr),
			      item_num)

	self.headlines.append((abs_path, file_len,
			       self.bare_name_terms, self.bare_content_terms))
	if item_num == view_start:    # display highest ranked item
	    initial_action = \
		lambda args=(collec_id, decl_id, item_num, 0, title_text,
			     item_loc, path_suffix): item_action(*args)
	item_num += 1
	item_start = win.index('end - 1 char')

# Delete dummy first entry:
    if view_start == 0:
	win.delete('1.0', '2.0')
    win.tag_configure('headline_text', font=small_fixed_font)
    self.num_qlines = min(view_start + view_size, len(items))
    self.qlines_count.config(text='%d' % self.num_qlines)
    self.adjust_continue_buttons()
    if self.num_qlines < len(items):
	win.insert(END, '----\n    %d additional items\n' % 
			(len(items) - self.num_qlines),
		   'continuation_count')
	win.tag_configure('continuation_count',
			  foreground=colors['item_meta_fg'])
    if see_pt: win.see(see_pt)
    initial_action()
    win.configure(state=DISABLED)


# Each headline item gets a right button binding for a popup menu.

def headline_context_menu(self, binding_function, index):
        def pop_up(event):
            self.popup_index = index
            self.popup_handler(event)
        bind_right_button(binding_function,
			  EventHandler('Content popup context menu', pop_up, 0))

# Compute a headline for the designated query by extracting text from the
# declaration stored in the database.  # Truncate output to LIMIT words.

def get_headline(item_attributes, q_type, terms, limit, mode=0):
    if q_type == 'step':
        return '%s: %s' % (item_attributes[0], item_attributes[1].capitalize())
    elif q_type == 'module':
        return '%s: %s' % (item_attributes[1], item_attributes[3].upper())
    elif q_type == 'library':
        return '%s: LIBRARY' % item_attributes[2]
    # rest for declarations and proofs
    decl_name = item_attributes[0]
    body = item_attributes[5]
    if decl_name.startswith('unnamed'):
        body = '%s: %s' % (decl_name, body)
    if not body:
        body = decl_name + ' : <generated declaration>'   # name:

    # Drop initial comment lines (generated with TCCs):
    body_lines = body.splitlines()
    for first, line in enumerate(body_lines):
        if not line.lstrip().startswith('%'): break
    # retrieve first N lines of declaration body
    return '\n'.join( body_lines[first:first+show_decl_lines] )


# Following is used to implement the "button" search feature of headlines.
# Clicking on a search term in a headline causes the next occurrence to
# be found in the display window.  Shares features with the auxiliary
# search function (Find entry).

def advance_to_term(self, item_num, term_num, delta):
        # assumes term sites and cur_site already set for this file
        # creates tag highlight_line in self.display
        find_state = self.find_state[item_num]
        instance_count = self.cur_site[term_num] + delta + 1
        total_count = self.hterm_total_count[term_num]
        if total_count == 0:
            find_state.highlight_line(0, 'missing_%s' % term_num)
            return
        if not (1 <= instance_count <= total_count):
            instance_count -= total_count * delta    # delta = +/- 1
        site = self.sites[term_num][instance_count - 1]
        self.cur_site[term_num] = instance_count - 1
        if total_count >= many_threshold:
            total_count = 'many'
        find_state.show_occurrence(0, delta, instance_count, total_count)
        new_tag = 'actual_%s_%s' % (term_num, instance_count - 1)
        find_state.highlight_line(site, new_tag)
        find_state.prev_index = 0
