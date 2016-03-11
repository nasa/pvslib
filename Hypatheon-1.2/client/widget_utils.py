
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# This module implements various Tkinter widget utilities to make
# widget creation more convenient and more uniform.
#

from client_globals import *

# ------------

class SunkenEntry(Entry):
    def __init__(self, parent, **options):
        if not (using_ttk or using_tile):
            options = merged_options(options, relief=SUNKEN)
        Entry.__init__(self, parent, **options)

class ThinButton(Button):
    def __init__(self, parent, min_width=6, **options):
        if using_ttk or using_tile or on_aqua:
            widget_options = merged_options(options, default=DISABLED)
        else:
            widget_options = merged_options(options, pady=1, default=DISABLED)
        Button.__init__(self, parent, **widget_options)
        if 'width' not in options:
            self['width'] = max(min_width, button_width_estimate(self['text']))

class MediumButton(Button):
    def __init__(self, parent, min_width=6, **options):
        if using_ttk or using_tile or on_aqua:
            widget_options = merged_options(options, default=DISABLED)
        else:
            widget_options = merged_options(options, pady=3, default=DISABLED)
        Button.__init__(self, parent, **widget_options)
        if on_aqua and 'width' not in options:
            self['width'] = max(min_width, button_width_estimate(self['text']))

class FullButton(Button):
    def __init__(self, parent, min_width=6, **options):
        Button.__init__(self, parent, **options)
        if on_aqua and 'width' not in options:
            self['width'] = max(min_width, button_width_estimate(self['text']))


class ColoredFrame(Frame):
    def __init__(self, parent, borderwidth=1, bd=1, color='gray60', **options):
        bd = max(bd, borderwidth)
        Frame.__init__(self, parent, relief=FLAT, **options)
        # create four sides using specified width and color
        Frame(self, height=bd, relief=FLAT, bg=color).pack(fill=X)
        Frame(self, height=bd, relief=FLAT, bg=color).pack(side=BOTTOM, fill=X)
        Frame(self, width=bd, relief=FLAT, bg=color).pack(side=LEFT, fill=Y)
        Frame(self, width=bd, relief=FLAT, bg=color).pack(side=RIGHT, fill=Y)
        # remaining cavity is for packing children of Frame

class FlatScrollbar(Scrollbar):
    def __init__(self, parent, width=14, **options):
        if using_ttk or using_tile or on_aqua:
            Scrollbar.__init__(self, parent, **options)
        else:
            Scrollbar.__init__(self, parent, width=width, relief=FLAT,
                               bd=0, elementborderwidth=1, **options)

class FixedFrame(Frame):
    def __init__(self, parent, width=30, height=24, **options):
        frame_options = \
            merged_options(options, width=width, height=height)
        Frame.__init__(self, parent, **frame_options)
        self.pack_propagate(0)   # don't shrink

def anchored_widget(parent, widget_class, side=LEFT,
                    padx=0, pady=0, **options):
    fr = Frame(parent)
    widget_class(fr, **options).pack(side=side)
    fr.pack(padx=padx, pady=pady, fill=X, expand=YES)

def status_prompt(widget, text, fg=None):
    widget.config(text = '%s' % text, fg = fg or 'black')

def entry_widget(parent, **options):
    if using_ttk or using_tile:
        ent = Entry(parent, **options)
    elif on_aqua:
        ent = Entry(parent, highlightthickness=3,
                    background=colors['text_bg_color'], relief=SUNKEN, bd=2,
                    highlightcolor=colors['highlight_color'], **options)
    else:
        ent = Entry(parent, highlightthickness=2,
                    background=colors['text_bg_color'], relief=SUNKEN,
                    highlightcolor=colors['master_bg'], **options)
        if not on_win:
            ent.configure(highlightbackground=colors['master_bg'])
    return ent


# Add mouse-wheel handlers for widgets that have scrollbars.
# Two function arguments do the actual scrolling.
# If either is None, use null binding for that direction.

def mouse_wheel_bindings(widget, vert_scroll, horiz_scroll=None):
    def delta_scroll(dir, offset=0, scale=1):    # Mouse wheel handler
        if dir:
            if vert_scroll:
                return lambda event: \
                    vert_scroll('scroll', offset + scale * event.delta, UNITS)
            else:
                return null_proc
        else:
            if horiz_scroll:
                return lambda event: \
                    horiz_scroll('scroll', offset + scale * event.delta, UNITS)
            else:
                return null_proc
    if on_win:
#        # register wheel scroller for event handlers in word panels
#        self.wheel_action[id+2] = delta_scroll
        pass
    elif on_osx:
        widget.bind('<MouseWheel>',       delta_scroll(1, 0, -1))
        widget.bind('<Shift-MouseWheel>', delta_scroll(0, 0, -1))
    else:
        widget.bind('<Button-4>',       delta_scroll(1, -1))
        widget.bind('<Button-5>',       delta_scroll(1, 1))
        widget.bind('<Shift-Button-4>', delta_scroll(0, -1))
        widget.bind('<Shift-Button-5>', delta_scroll(0, 1))

# Construct a scrolled text widget.  Returns containing frame, text widget.

def scrolled_text_widget(parent, width=40, height=24, barwidth=14,
                         horiz_scroll=0, tab_stops=(), **text_options):
    fr = Frame(parent)
    if horiz_scroll: wrap_mode = NONE
    else:            wrap_mode = WORD
    text_widget_options = \
        merged_options(text_options, padx=5, pady=5,
                       wrap=wrap_mode, font=text_font, tabs=tab_stops,
                       width=width, height=height, highlightthickness=0,
                       state=NORMAL, background=colors['text_bg_color'])
    txt = Text(fr, **text_widget_options)
    scroll = FlatScrollbar(fr, command=txt.yview, width=barwidth)
    txt.configure(yscrollcommand=scroll.set)
    txt.grid(row=0, column=0, sticky='news')
    fr.rowconfigure(0, weight=1, minsize=0)
    scroll.grid(row=0, column=1, sticky='ns')
    fr.columnconfigure(0, weight=1, minsize=0)
    fr.columnconfigure(1, weight=0, minsize=0)
    if horiz_scroll:
        hscroll = FlatScrollbar(fr, command=txt.xview, orient=HORIZONTAL,
                                width=barwidth)
        txt.configure(xscrollcommand=hscroll.set)
        hscroll.grid(row=1, column=0, sticky='ew')
        fr.rowconfigure(1, weight=0, minsize=0)
        mouse_wheel_bindings(parent, lambda *args: txt.yview(*args),
                             lambda *args: txt.xview(*args))
    else:
        mouse_wheel_bindings(txt, lambda *args: txt.yview(*args))
    bind_widget_debug(parent, txt)
    return fr, txt

# Construct a scrolled listbox widget.  Returns containing frame, listbox.

def scrolled_listbox(parent, width=30, height=12, barwidth=14,
                     horiz_scroll=0, selectmode=SINGLE, **box_options):
    fr = Frame(parent)
    listbox_options = \
        merged_options(box_options, selectmode=selectmode, exportselection=0,
                       background=colors['text_bg_color'],
                       height=height, width=width, highlightthickness=0)
    listbox = Listbox(fr, **listbox_options)
    scrollbar = FlatScrollbar(fr, command=listbox.yview, width=barwidth)
    listbox.configure(yscrollcommand=scrollbar.set)
    listbox.grid(row=0, column=0, sticky='news')
    fr.rowconfigure(0, weight=1, minsize=0)
    scrollbar.grid(row=0, column=1, sticky='ns')
    fr.columnconfigure(0, weight=1, minsize=0)
    fr.columnconfigure(1, weight=0, minsize=0)
    if horiz_scroll:
        hscroll = FlatScrollbar(fr, command=listbox.xview, width=barwidth,
                                orient=HORIZONTAL)
        listbox.configure(xscrollcommand=hscroll.set)
        hscroll.grid(row=1, column=0, sticky='ew')
        fr.rowconfigure(1, weight=0, minsize=0)
        mouse_wheel_bindings(parent, lambda *args: listbox.yview(*args),
                             lambda *args: listbox.xview(*args))
    else:
        mouse_wheel_bindings(parent, lambda *args: listbox.yview(*args))
    bind_widget_debug(parent, listbox)
    return fr, listbox


# Construct a top-level window to display text with scrollbars.  Accept
# a procedure for adding buttons (or other widgets) at the bottom.  The
# procedure is passed the parent frame and it must explicitly pack against
# the BOTTOM.  The text widget object is returned for later use to insert text.
# The toplevel frame is optionally returned.

def scrolled_text_display(title='Hypatheon Client Text Display',
                          intro=None, aspect=2000, button_proc=None,
                          horiz_scroll=0, barwidth=14, set_grab=0,
                          width=70, height=24, geometry=window_geometry,
                          tab_stops=(), return_frame=0, enter_focus=1,
                          **text_options):
    fr = Toplevel()
    fr.geometry(newGeometry=geometry)
    if set_grab:
        fr.grab_set()
    if button_proc:
        button_proc(fr)    # assumes proc packs against BOTTOM
    elif on_osx:
        Frame(fr).pack(side=BOTTOM, pady=8)   # leave room for resize button
    if intro:
        Frame(fr).pack(pady=2)
        Message(fr, aspect=aspect, text=intro).pack(padx=10, pady=5)
    txt_fr = Frame(fr)
    widget_options = \
        merged_options(text_options, padx=10, pady=5,
                       wrap=WORD, state=NORMAL, font=text_font,
                       width=width, height=height, highlightthickness=0,
                       background=colors['text_bg_color'], tabs=tab_stops)
    txt = Text(txt_fr, **widget_options)
    scroll = FlatScrollbar(txt_fr, command=txt.yview, width=barwidth)
    txt.configure(yscrollcommand=scroll.set)
    if enter_focus: fr.bind('<Enter>', lambda event: txt.focus_set())
    scroll.pack(side=RIGHT, fill=Y)
    if horiz_scroll:
        hscroll = FlatScrollbar(txt_fr, command=txt.xview,
                                width=barwidth, orient=HORIZONTAL)
        txt.configure(xscrollcommand=hscroll.set)
        hscroll.pack(side=BOTTOM, fill=X)  # side=LEFT, fill=Y)
        mouse_wheel_bindings(txt, lambda *args: txt.yview(*args),
                             lambda *args: txt.xview(*args))
    else:
        mouse_wheel_bindings(txt, lambda *args: txt.yview(*args))
    txt.pack(side=LEFT, fill=BOTH, expand=YES)
    txt_fr.pack(padx=5, pady=5, fill=BOTH, expand=YES)
    fr.title(string=title)
    if return_frame: return fr, txt
    else:            return txt

# Construct a top-level window to display a listbox with scrollbars.  Accept
# a procedure for adding buttons (or other widgets) at the bottom.  The
# procedure is passed the parent frame.  The listbox widget object is returned
# for later use by the caller.  The toplevel frame is optionally returned.

def scrolled_listbox_display(title='Hypatheon Client Listbox Display',
                             width=30, height=12, barwidth=14, set_grab=0,
                             selectmode=SINGLE, geometry=window_geometry,
                             intro=None, aspect=2000, button_proc=None,
                             return_frame=0, enter_focus=1, **box_options):
    fr = Toplevel()
    fr.geometry(newGeometry=geometry)
    if set_grab:
        fr.grab_set()
    if intro:
        Frame(fr).pack(pady=2)
        Message(fr, aspect=aspect, text=intro).pack(padx=10, pady=5)
    if button_proc:
        button_proc(fr)    # assumes proc packs against BOTTOM
    elif on_osx:
        Frame(fr).pack(side=BOTTOM, pady=8)   # leave room for resize button
    listbox_fr = Frame(fr)
    listbox_options = \
        merged_options(box_options, selectmode=selectmode, relief=SUNKEN,
                       bd=1, exportselection=0,
                       background=colors['text_bg_color'],
                       height=height, width=width, highlightthickness=0)
    listbox = Listbox(listbox_fr, **listbox_options)
    scrollbar = FlatScrollbar(listbox_fr, command=listbox.yview,
                          width=barwidth)
    scrollbar.pack(side=RIGHT, fill=Y, expand = YES)  #, pady=4)
    listbox.configure(yscrollcommand=scrollbar.set)
    listbox.pack(side=LEFT, fill=BOTH, expand=YES)   #, padx=4, pady=4)
    mouse_wheel_bindings(fr, lambda *args: listbox.yview(*args))
    listbox_fr.pack(padx=5, pady=10)
    fr.title(string=title)
    if return_frame: return fr, listbox
    else:            return listbox


# Create a scrolled text widget that will be populated by rows of
# tabular information.  Accept a list of header labels to display
# above the text widget.

def scrolled_table_text(parent, width=40, height=24, tab_stops=(),
                        header_labels=()):
    fr = Frame(parent)
    header = Frame(fr)
    for h in header_labels:
        Label(header, text=h).pack(side=LEFT)
    header.pack(fill=X, pady=5)
    stops = tuple([ t * fixed_text_pixels for t in tab_stops ])
    table_fr, table_text = \
              scrolled_text_widget(fr, width=width, height=height,
                                   tab_stops=tab_stops, font=small_fixed_font)
    table_fr.pack(padx=5, pady=5)
    return fr, table_fr, table_text
            

# Build a table using grid geometry manager.
# Accepts a list of functions for creating the widgets in each column
# of the rows.  Each function has signature [parent, arg -> widget].
# If a header row is needed, just supply it as the first row.
# The initialization args to these functions are supplied
# as a list of row lists (header is first row if used).
# Each row list item is an arg supplied to the corresponding
# column widget function (None values for empty cells).
# Tuples may be used instead of lists, of course.
# Alternative header method: provide label strings in header arg.

# An optional anchor list may be supplied to indicate the positioning
# of widgets within their cells.  Left justification is the default.
# If a value item has the form of a tuple, its second element is
# considered an optional anchor that overrides the column anchor.
# Optional row and column weight lists may be supplied to indicate the
# expandability of rows and columns.  The default is 1 (expandable).
# Returns the outer frame (unpacked) and the table widgets as a list of rows,
# each item of which is a list of column widgets.

def build_table(parent, col_functions, init_values, anchors=(), headers=(),
                col_weights=(), row_weights=(), padx=0, pady=0, ymargin=0):
    if ymargin: 
        outer = Frame(parent)
        fr = Frame(outer)
    else:
        fr = Frame(parent)
    num_rows = len(init_values)
    num_cols = len(col_functions)
    if not anchors: anchors = [ W for f in col_functions ]
    if not col_weights: col_weights = [ 1 for f in col_functions ]
    if not row_weights: row_weights = [ 1 for v in init_values ]
    col_indices = range(num_cols)
    row_widgets = []

    def build_row(row, init_vals):
        col_widgets = []
        for c, wfn, val, anchor in \
                zip(col_indices, col_functions, init_vals, anchors):
            if val == None: continue    # empty cell
            if isinstance(val, tuple): val, anchor = val
#            if type(val) == types.TupleType: val, anchor = val
            widget = wfn(fr, val)
            col_widgets.append(widget)
            widget.grid(row=row, column=c, sticky=anchor, padx=padx, pady=pady)
        row_widgets.append(col_widgets)

    if headers:
        col_widgets = []
        for c, hdr, anchor in zip(col_indices, headers, anchors):
            if isinstance(hdr, tuple): hdr, anchor = hdr
            widget = Label(fr, text=hdr)
            col_widgets.append(widget)
            widget.grid(row=0, column=c, sticky=anchor, padx=padx, pady=pady)
        row_widgets.append(col_widgets)
        row_indices = range(1, num_rows + 1)
    else:
        row_indices = range(num_rows)

    for row, init_vals, wt in zip(row_indices, init_values, row_weights):
        build_row(row, init_vals)
        fr.rowconfigure(row, weight=wt, minsize=0)
    for col, wt in zip(col_indices, col_weights):
        fr.columnconfigure(col, weight=wt, minsize=0)
    if ymargin:
        fr.pack(pady=ymargin)
        top_frame = outer
    else:
        top_frame = fr
    return top_frame, row_widgets


# Pop up a toplevel window.  Function display_fn takes a parent frame
# as first argument and displays its widgets within that frame.  A list
# of other arguments to the display function is supplied by the caller.

def pop_up_toplevel_window(display_fn, args, title, parent=None,
                           set_grab=0, corner=0, x_offset=0, y_offset=0,
                           top_margin=10, bottom_margin=0):
    fr = Toplevel(parent)
    fr.withdraw()  # unmap window while building to prevent flash ###
    fr.geometry(newGeometry=window_geometry)  # temp position
    if set_grab:
        fr.grab_set()
    Frame(fr, height=top_margin).pack()
    try:
        display_fn(fr, *args)
    except:
        fr.grab_release()    # let go, then re-raise the exception
        raise
    if bottom_margin:
        Frame(fr, height=bottom_margin).pack()
    if corner:
        fr.deiconify()  # remap window  ###
        return          # leave in upper right corner
    rx,ry = root.winfo_rootx(), root.winfo_rooty()
    fr.update_idletasks()
    x = (root.winfo_width() - fr.winfo_reqwidth()) // 2
    y = (root.winfo_height() - fr.winfo_reqheight()) // 2
    # move window to final position
    fr.geometry(newGeometry='+%d+%d'%(rx + x + x_offset, ry + y + y_offset))
    fr.transient()###
    fr.title(string=title)
    fr.deiconify()  # remap window  ###  not working in some cases
    return fr


# For right-click popup menus.  Supply a list of items: [(label, proc)],...].
# Insert None in the list to create a separator.  Use (label, list) to
# indicate a cascading submenu.  If any items have form (label, proc, tag),
# a dictionary is created and returned that maps from tags to list
# item numbers.

def add_popup_menu(parent, menu_items):
    popup = Menu(parent, tearoff=0)
    tag_dict = {}
    for item in menu_items:
        if isinstance(item, dict):
            popup.add_command(**item)
        elif item and callable(item[1]):
            popup.add_command(label=item[0],
                              command=EventHandler('Popup menu: %s' %
                                                   item[1].__name__, item[1]))
        elif item:
            popup.add_cascade(label=item[0],
                              menu=add_popup_menu(popup, item[1]))
        else:
            popup.add_separator()
    for i in range(len(menu_items)):
        if menu_items[i] and len(menu_items[i]) > 2:
            tag_dict[menu_items[i][2]] = i
    if tag_dict: return popup, tag_dict
    else:        return popup


_dummy_entry = Entry()   # don't display; for export selection only

# Add a row of buttons given a list of descriptor tuples
# (name, command [, watch, disabled]).
# First button on list is default, unless overridden with a different
# button index or None for no default.
# On Windows, buttons displayed in order given.
# On other platforms, they are reversed.
# Returns frame (unpacked), list of button widgets

def button_row(parent, butt_list,
               row_descriptor='', padx=5, size=2, default=0):
    button_fr = Frame(parent)
    widgets = []
    button_list = list(butt_list)
    if on_win:
        button_list.reverse()
        if default != None: default = -1
    for button in button_list:
        event_name = ' '.join((row_descriptor, button[0])).strip()
        if len(button) > 2:
            command = EventHandler(event_name, button[1], button[2])
        else:
            command = EventHandler(event_name, button[1])
        button_class = (ThinButton, MediumButton, FullButton)[size]
        w = button_class(button_fr, text=button[0], command=command,
                         default=NORMAL)
        if len(button) > 3 and button[3]:
            w['state'] = DISABLED
        w.pack(side=RIGHT, padx=padx)
        widgets.append(w)
    if default != None:
        widgets[default]['default'] = ACTIVE
    return button_fr, widgets


def set_scrollbars_top(widget):
    # following two motions needed to compensate for
    # balky scrollbar behavior on OS X Aqua
    widget.yview_moveto(1.0)
    widget.after(10, lambda : widget.yview_moveto(0.0))

def copy_text_clipboard(txt):
    _dummy_entry.delete(0, END)
    _dummy_entry.insert(END, txt)
    _dummy_entry.selection_range(0, END)        # for Unix/Linux
    _dummy_entry.clipboard_clear()
    _dummy_entry.clipboard_append(_dummy_entry.get())   # needed for Win, OS X

def displayMessage(text, simple):
   if simple>0:
      messageWindow = SimpleDialog(master=mainwindow, text=text,
                                   buttons=['OK', 'CANCEL'], cancel=1)
   else:
      messageWindow = SimpleDialog(master=mainwindow, text=text,
                                   buttons=['Close'], cancel=0)
   messageWindow.go()
   return messageWindow.num

# Following confirmation dialog can avoid deadlocks that arise when the
# built-in Tkinter dialogs, which do an implicit grab, prevent events
# from being routed as they should be.

def confirmation_dialog(parent, title, question, default=0):
    response = BooleanVar()
    def set_and_exit(win, var, value):
        var.set(value)
        win.destroy()
    def make_dialog(fr):
        Message(fr, text=question, font=heading_font,
                aspect=500, padx=40).pack(pady=20)
        button_fr, buttons = \
            button_row(fr, (('Yes', lambda : set_and_exit(fr, response, 1)),
                            ('No',  lambda : set_and_exit(fr, response, 0))),
                       'Confirmation', size=1, default=default)
        fr.bind('<Return>', lambda *args: set_and_exit(fr, response, 1-default))
        Frame(button_fr).pack(side=LEFT, fill=X)
        button_fr.pack(side=BOTTOM, padx=20, pady=10, fill=X)
    pop_up_toplevel_window(make_dialog, (), title, parent=parent)
    parent.wait_variable(response)
    return response.get()


def view_log_file(title, file_name, init_pos=1.0, font=text_font):
    count = [None]      # mutable variable
    view_buttons = [None,None]
    def add_buttons(fr):
        but_fr = Frame(fr)
        count[0] = Label(but_fr, text='')
        count[0].pack(side=LEFT, padx=20)
        bfr, buttons = \
            button_row(but_fr,
                       ((close_button_text, lambda : fr.destroy(), 0),
                        ('Redisplay',       lambda : show_all(), but_fr)))
        bfr.pack(side=RIGHT, padx=30, pady=3)
        but_fr.pack(fill=X, side=BOTTOM)
        view_buttons[:] = buttons
    top, txt = scrolled_text_display(title=title, width=72, barwidth=11,
                                     intro='File: %s' % file_name,
                                     button_proc=add_buttons, font=font,
                                     return_frame=1)
    top.bind('<Return>', lambda *args: top.destroy())
    top.geometry(window_geometry)
    def show_all():
        txt.delete(1.0, END)
        if os.path.exists(file_name):
            lines = read_text_file(file_name, 1)
        else:
            lines = ['This log file has not been created yet.']
        for v in lines: txt.insert(END, v)
        count[0].config(text='%d lines in log file' % len(lines))
        txt.yview_moveto(init_pos)
    # For some reason, yview_moveto only works from button callbacks,
    # not from menu items callbacks.
    view_buttons[1].invoke()
    # show_all()

def view_text_file(title, file_name, init_pos=0.0):
    def add_buttons(fr):
        button_row(fr, ((close_button_text,
                         lambda : fr.destroy(), 0)))[0].pack(side=BOTTOM)
    txt = scrolled_text_display(title=title, width=72, barwidth=11,
                                intro='File: %s' % file_name,
                                button_proc=add_buttons)

# Bind a control/command key combination.  On OS X, both control and
# command keys are bound by default.  Argument 'both' can disable.

def bind_control_key(win, char, proc, both=1):
    command = lambda event, cmd=proc: cmd()
    if on_osx:
        win.bind('<Command-%s>' % char, command)
        if both:
            win.bind('<Control-%s>' % char, command)
    else:
        win.bind('<Control-%s>' % char, command)


# ---------- Attribute-tagged Text widget insertion ---------- #

# The following features enable strings for insertion in Text widgets
# to be annotated with attribute tags.  The tags allow for substrings
# to be demarcated and associated with font and color attributes.  The
# tagged strings have the form <:label::string:>, where label names a
# predefined set of attributes.  Given a text widget and an annotated
# string, the insertion procedure will interpret the tagged portions
# and emit the Tkinter methods needed to insert each segment with the
# appropriate configuration settings.

text_tag_attrib_defns = {
    'blue'     : (text_font, 'dark blue'),
    'topic'    : (bold_font, 'dark blue'),
    'bold'     : (bold_font, 'black'),
    'italic'   : (italic_font, 'black'),
    'heading1' : (heading_font, 'black'),
#    'heading2' : (heading2_font, 'black'),
    }

_attrib_string_tag = re.compile('(?s)<:(\w+)::(.+?):>')

gensym_num = 0

def insert_annotated_text(widget, atext):
    global gensym_num
    left = 0
    match = _attrib_string_tag.search(atext)
    while match:
        plain = atext[left:match.start()]
        if plain:
            widget.insert(END, plain)
        label, astring = match.groups()
        font, color = text_tag_attrib_defns.get(label, (text_font, 'black'))
        gensym_num += 1
        wtag = 'hyp_sym_%d' % gensym_num
#        wtag = gensym()
        widget.insert(END, astring, (wtag,))
        widget.tag_configure(wtag, font=font, foreground=color)
        left = match.end()
        match = _attrib_string_tag.search(atext, left)
    if left < len(atext):
        widget.insert(END, atext[left:])


# --------- Debug support ----------

# Adds a binding for ctrl/shift-F12 to append the widget object to
# global WID, then pop up a debug window.

def bind_widget_debug(parent, widget):
    def widget_debug(*args):
        WID.append(widget)
        display_debug_eval()
    parent.bind('<Shift-F12>',   widget_debug)
    parent.bind('<Control-F12>', widget_debug)
