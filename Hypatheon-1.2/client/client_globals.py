
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Common definitions for Hypatheon Client are collected here.  These are
# imported by all client modules, directly or indirectly.

from app_globals       import *
from time import time as time_sec

from Tkinter import *
from tkFileDialog import askopenfilename, asksaveasfilename
from tkMessageBox import \
     askokcancel, askyesno, askquestion, showinfo, showwarning, showerror

from client_messages   import *

import carry_over      # checks for new version and carries over files


# ---------- Global constants ---------- #

on_win = sys.platform[0:3] == 'win'     # Set options according to platform
on_osx = sys.platform      == 'darwin'
on_linux = sys.platform.startswith('linux')

temp_file = new_temp_file_name()

root = Tk()        # start Tk and save resulting object
root.withdraw()
mainwindow = root
root.option_add('*tearOff', FALSE)        # suppress tearoff menu feature

on_aqua  = on_osx and 'aqua' in root.tk.call('tk', 'windowingsystem')
on_cocoa = on_aqua and 'AppKit' in root.tk.call('winfo', 'server', '.')

try:
    if on_aqua: root.tk.call('console', 'hide')
except:
    pass    # some versions don't have a console

client_main_log  = 'client_main_log'
client_error_log = 'client_error_log'

output_file   = os.path.join(log_dir, client_main_log)
error_file    = os.path.join(log_dir, client_error_log)

open(output_file, 'w').close()           # erase log file before reopening
main_log_file = open(output_file, 'a+')  #   it in append mode
sys.stderr    = open(error_file, 'w')

pvs_data_file     = os.path.join(tmp_dir, 'pvs_data.txt')
proof_script_path = os.path.join(tmp_dir, 'proof_script.txt')


# When the client is run for the first time, it needs to copy files
# that are subject to user editing.

try:
    prefs_file = os.path.join(config_dir, 'preferences.conf')
    _orig_prefs = os.path.join(config_dir, 'orig_prefs.conf')
    if not os.path.exists(prefs_file):
        shutil.copy(_orig_prefs, prefs_file)
#     update_user_prefs(prefs_file, _orig_prefs, app_version)
    preference_load_error = 0
except:
    preference_load_error = 1   ### return failed value ###

# Following import needs to follow preference update actions.

from preference_utilities import user_prefs
from platform_utilities   import *

verbose_logging = user_prefs.getint('Application', 'verbose_logging')
if verbose_logging:
    query_log_file = open(os.path.join(log_dir, 'query_log'), 'a')
else:
    query_log_file = None


# ------------ Color definitions ------------ #

colors = {'master_bg':       '#e8e8e8',       # '#d7dee4', # AliceBlue @ 228
          'word_bg_color':   'AliceBlue',
          'text_bg_color':   'ghost white',
          'text_fg_color':   'black',
          'text_bg_gray':    '#f4f4f4',
          'highlight_color': 'DodgerBlue2',   # for entry widgets   ###
          'balloon_color':   '#ffffa0',
          'pos_lookup':      'dark green',    # for lookup result of true
          'muted_red':       '#800000',
          'gray_text':       '#606060',
          'gray_red':        '#c0a0a0',
          'not_imported':    '#606060',

          'headline_alt':    '#f2f4ff',       # pale bluish gray
          'headline_select': '#fffad4',       # pale yellow
          'highlight_line':  '#e8e8f8',       # bluish gray
          'term_occ_fg':     'red',
          'item_meta_fg':    'dark blue',
          'find_text_color': '#e000ff',       # bluish magenta
          'find_error_bg':   '#ffe0e0',       # pale pink
          'headline_occ_fg': '#e000ff',       # bluish magenta
}


# ------------ Font definitions ------------ #

import tkFont

base_font_size = user_prefs.getint('Client', 'base_font_size')

if base_font_size == 0:
    if on_osx: base_font_size = 13
    else:      base_font_size = 11

font_family = {'fixed': 'Courier',   ###
               'sans':  'Helvetica',
               'serif': 'Times'}

fixed_text_pixels = tkFont.Font(root=root,
                                font=font_family['fixed']).measure('a')

def font_var(family, size=base_font_size, weight='normal'):   ###
    if   size == 'base':  size_value = base_font_size
    elif size == 'small': size_value = base_font_size - 1
    elif size == 'large': size_value = base_font_size + 1
    else:                 size_value = size
    return (font_family[family], size_value, weight)  ###

# font.Font(family='Helvetica', size=12, weight='bold')  for Python 3

text_font           = font_var('sans')
serif_text_font     = font_var('serif')
list_font           = font_var('sans')
bold_font           = font_var('sans', 'base', 'bold')
heading_font        = font_var('sans', 'large', 'bold')
title_font          = font_var('sans', 'small', 'bold')
headline_font       = font_var('sans', 'small')
fixed_text_font     = font_var('fixed')
small_text_font     = font_var('sans', 'small')
small_fixed_font    = font_var('fixed', 'small')
small_button_font   = font_var('sans', 'small', 'bold')
italic_font         = font_var('sans', 'base', 'italic')
help_text_font      = font_var('serif')

spacer_font         = (font_family['fixed'], 6)

# Provide a function to estimate font-relative width of button text.

_button_ref_font = tkFont.Font(root=root, font=Button()['font'])
_button_ref_width = \
    (_button_ref_font.measure('M') + _button_ref_font.measure('i')) / 2.0

def button_width_estimate(text):
    return int(round(_button_ref_font.measure(text) / _button_ref_width))


# Use either the new ttk package (Tk 8.5+) or the Tile package (Tk 8.4)
# for improved native look on Linux.  Defer use on OS X; there are
# still some problems and the widgets look the same.

using_ttk, using_tile = None, None

if on_win or on_linux:
    try:
        import ttk
#        from ttk import *  ### override all defaults with ttk widgets
        using_ttk = True
    except:
        try:
            using_tile = root.tk.call('package', 'require', 'tile')
        except:
            pass

if using_ttk or using_tile:
    root.tk_setPalette('background', colors['master_bg'])
elif on_osx:
    root.tk_setPalette('background', colors['master_bg'])
else:
    root.tk_setPalette('background', colors['master_bg'])
    root.option_add('*font', text_font)

# If available, ttk or Tile versions of selected widgets
# will become the defaults.
theme_set = ''
if using_ttk:
    ttk_style = ttk.Style()
    if on_win:
        try:
            ttk_style.theme_use('xpnative')
            theme_set = 'xpnative'
        except:
            ttk_style.theme_use('winnative')
            theme_set = 'winnative'
    elif on_aqua:
        ttk_style.theme_use('aqua')
    else:
        ttk_style.theme_use('default')  ### or clam or alt

    # override selected widgets with ttk versions:
    from ttk import Button, Checkbutton, Entry, Radiobutton, Scrollbar
    from ttk import Menubutton

# If available, Tile versions of selected widgets will become the defaults.
# Under Python 2.6, tile::setTheme doesn't seem to be available, although
# ttk::button, etc., might be.

if using_tile:
    if on_win:
        try:
            root.tk.call('tile::setTheme', 'xpnative')
            theme_set = 'xpnative'
        except:
            try:
                root.tk.call('tile::setTheme', 'winnative')
                theme_set = 'winnative'
            except:
                pass    # do without Tile or ttk theme
    elif on_aqua:
        try:
            root.tk.call('tile::setTheme', 'aqua')
        except:
            pass    # do without Tile or ttk theme
    else:
        try:
            root.tk.call('tile::setTheme', 'default')
        except:
            pass    # do without Tile or ttk theme
    try:
        root.tk.call('namespace', 'import', '-force',
                     'ttk::button', 'ttk::checkbutton', 'ttk::dialog',
                     'ttk::entry', 'ttk::radiobutton', 'ttk::scrollbar')
#                    'ttk::label', ttk::frame,
    except:
        pass    # do without ttk:: widgets
#    root.tk.call('namespace', 'import', '-force', 'ttk::*')


# Unicode shape characters

u_triagup = u'\u25b4'  # black up-pointing small triangle
u_triagrt = u'\u25b8'  # black right-pointing small triangle
u_triagdn = u'\u25be'  # black down-pointing small triangle
u_triaglf = u'\u25c2'  # black left-pointing small triangle
u_wtrigup = u'\u25b5'  # white up-pointing small triangle
u_wtrigdn = u'\u25bf'  # white down-pointing small triangle

if on_osx:
    dir_indicator = ('<< ', '', '>> ')   # for +/- 1 indexing
else:
    dir_indicator = (u_triaglf, '', u_triagrt)   # for +/- 1 indexing

focus_highlight_thickness = 2

default_cursor = root['cursor']

if on_win or on_osx: close_button_text = 'OK'
else:                close_button_text = 'Close'

def make_button_binder(n):
    def bind_button_n(binding_function, proc, down=1):
        if down:
            binding_function('<Button-%d>' % n, proc)
        else:
            binding_function('<ButtonRelease-%d>' % n, proc)
    return bind_button_n

if on_osx:
    # buttons 2 & 3 reversed on Mac
    def bind_right_button(binding_function, proc, down=1):
        if down:
            binding_function('<Control-Button-1>', proc)
            binding_function('<Button-2>', proc)
        else:
            binding_function('<Control-ButtonRelease-1>', proc)
            binding_function('<ButtonRelease-2>', proc)
    bind_middle_button = make_button_binder(3)
    middle_button_event = '<Button-3>'
    middle_button_event = '<Button-3>'
else:
    bind_right_button  = make_button_binder(3)
    bind_middle_button = make_button_binder(2)
    middle_button_event = '<Button-2>'

if on_osx: window_geometry = '+0+40'      # account for system menu bar
else:      window_geometry = '+0+0'


# ---------- Class definitions ---------- #
    
# EventHandler is a wrapper for procedures that are bound to Tkinter events.
# It provides for catching and logging of unhandled exceptions by writing a
# traceback to the debug log.  It optionally records execution times.
# It may also be used in other contexts such as thread procedures
# for the Tkinter 'after' method.

class EventHandler(object):
    def __init__(self, name, proc, show_watch_cursor=root):
        self.name = name
        self.proc = proc
        self.__name__ = 'EH'   ### added for Tkinter changes in 2.7.10
        self.show_watch_cursor = show_watch_cursor

    def db_error_warning(self):
        user_dialog(showwarning, *warning_messages['database_error'])
    def record_exception(self):
        emit_log_entry(sys.stderr,
                       "\n***** Handler '%s' raised an exception. *****\n"
                       % self.name)
        trace = StringIO()
        print_exc(100, trace)
        internal_error(trace.getvalue(), 'Event handler error')

    if collect_time_data:
        def __call__(self, *args, **kargs):
            if self.show_watch_cursor:
                self.show_watch_cursor.config(cursor='watch')
                self.show_watch_cursor.update_idletasks()
            result = None
            start = time.time()
            try:
                result = self.proc(*args, **kargs)
            except FalseStart:       # these are safely rejected user actions
                pass
            except DatabaseError:    # possibly benign; warn user
                self.db_error_warning()
            except:                  # unhandled exceptions land here
                self.record_exception()
            if self.proc.__name__ not in exclude_time_data:
                emit_log_entry(main_log_file,
                               "handler '%s'" % self.name, start, time.time())
            if self.show_watch_cursor and self.show_watch_cursor.winfo_exists():
                self.show_watch_cursor.config(cursor='')
            return result
    else:
        def __call__(self, *args, **kargs):
            if self.show_watch_cursor:
                self.show_watch_cursor.config(cursor='watch')
                self.show_watch_cursor.update_idletasks()
            result = None
            try:
                result = self.proc(*args, **kargs)
            except FalseStart:       # these are safely rejected user actions
                pass
            except DatabaseError:    # possibly benign; warn user
                self.db_error_warning()
            except:                  # unhandled exceptions land here
                self.record_exception()
            if self.show_watch_cursor and self.show_watch_cursor.winfo_exists():
                try:
                    self.show_watch_cursor.config(cursor='')
                except TclError, err_info:
                    print err_info
            return result


# ---------- Utility procedures ---------- #

# Merge a procedure's called option arguments with default options,
# overriding defaults having same keys.

def merged_options(options, **defaults):
    result = defaults.copy()
    result.update(options)
    return result

# Invoking an os command with logging.  Send process output, errors to
# log file according to value of arg redirect:
# 2: redirect stdout, stderr; 1: redirect only stderr; 0: redirect neither
# Caller is responsible for quoting fields of cmd as needed.

def os_system(cmd, redirect=2, background=0):
    start = time.time()
    if background: bgnd = ' &'
    else:          bgnd = ''
    redir = ('', ' 2>> "%s"', ' >> "%s" 2>> "%s"')[redirect] % \
            ((), (output_file, ), (output_file, output_file))[redirect]
    log_insert = ('\n-------- command begins --------',
                  '\n-------- command stderr output follows --------',
                  '\n-------- command stdout, stderr output follows --------',
                  )[redirect]
    logged_cmd = '%s%s%s' % (cmd, redir, bgnd)
    emit_log_entry(ops_log_file,
                   'Invoking OS command:\n>>> %s%s' % (logged_cmd, log_insert))
    exit_code = subprocess.call(logged_cmd, shell=True)
    print >> ops_log_file, '-------- command ends --------'
    emit_log_entry(ops_log_file,
                   'Command completed with exit code %s.' % exit_code,
                   start, time.time())
    return exit_code
    
# Following variable is assigned a non-null cleanup procedure after
# the application classes are created.  OS X restores the arrow cursor
# after a user dialog.  Grid cursors need to be reset after a dialog.

user_dialog_cleanup = null_proc
def set_user_dialog_cleanup(proc):
    global user_dialog_cleanup
    user_dialog_cleanup = proc

user_message_log = []
def reset_user_message_log():
    del user_message_log[:]

def log_user_message(title, message):
    user_message_log.append(
        '%s  [ %s ]\n%s\n\n' %
        (time.strftime('%H:%M  %d %b %Y'), title, message))

if collect_time_data:
    def user_dialog(dialog_proc, title, message, *args, **nargs):
        if on_osx: root.update_idletasks()   # ensure widgets are displayed
        start = time_sec()
        result = dialog_proc(title, message, *args, **nargs)
        emit_log_entry(main_log_file, 'User dialog: %s' % dialog_proc.__name__,
                       start, time_sec())
        log_user_message(title, message)
        user_dialog_cleanup()
        return result
else:
    def user_dialog(dialog_proc, title, message, *args, **nargs):
        if on_osx: root.update_idletasks()   # ensure widgets are displayed
        result = dialog_proc(title, message, *args, **nargs)
        log_user_message(title, message)
        user_dialog_cleanup()
        return result

error_dialog_fn = lambda *args: user_dialog(showerror, *args)


def delete_old_log_files(pattern):
    log_files = glob.glob(os.path.join(log_dir, pattern))
    old_files = []
    cutoff_time = time.time() - 30*24*3600     # 30 days ago
    for path in log_files:
        if os.path.getmtime(path) < cutoff_time:
            try:
                os.remove(path)
                old_files.append(os.path.basename(path))
            except IOError:
                pass    #### log failure?
    if old_files:
        entry = 'Deleting old log files:\n' + '\n'.join(old_files)
    else:
        entry = 'No old log files to delete.'
    emit_log_entry(ops_log_file, entry)

def set_watch_cursor(display=0, update_on_reset=0):
    if display:
        root.config(cursor='watch')
        root.update_idletasks()
    else:
        root.config(cursor='')
        if update_on_reset:
            root.update_idletasks()

# Under Tk 8.5, index values returned from widget operations might have
# type _tkinter.Tcl_Obj instead of string.  Need to convert to string
# first before applying float.

def float_tk(obj):
    return float(str(obj))


# ------------ Error handling ------------ #

def raise_error(title, message):
    user_dialog(showerror, title, message)
    raise UserError

# Extract title, user message and apply string substitution st.

def user_msg_sub(msg_dict, key, st):  ## st is a string tuple or single string
    title, message = msg_dict[key]
    return title, message % str(st)


def eval_assertion(assertion, label, *args):
    if check_assertions:
        start = time.time()
        outcome = assertion()  # Non-false if assertion finds a problem
        if outcome:
            message = "*** Assertion '%s' failed: %s; %s" \
                      % (label, outcome, args)
        else:
            message = "checking assertion '%s'" % label
        stop = time.time()
        emit_log_entry(main_log_file, message, start, stop)
        if outcome: assert 0, 'See log file'

def emit_log_header(label, file):
    bar = '==============================' [:max(0,(60-len(label))/2)]
    print >> file, '\n%s %s %s\n' % (bar, label, bar)


_internal_error_count = 0
_error_file_name = ''
_upload_path = ''

# An internal error causes a log file to be captured and saved.  Then a
# dialog message is displayed for the user.

def internal_error(log_string, title='', show=1):
    global _internal_error_count, _error_file_name, _upload_path
    _internal_error_count += 1
    if _internal_error_count > 5: return     ### stop runaway errors
    # unhandled exceptions in lines below may invoke this function recursively
    emit_log_entry(sys.stderr, '\n-------------------------------\n')
    debug_log(sys.stderr, log_string)
    debug_log(sys.stderr, '-------------------------------\n')
    _error_file_name = time.strftime('err-%H%M-%d%b%y', time.localtime())
    try:
        debug_file_name = os.path.join(log_dir, _error_file_name)
        debug_file = open(debug_file_name, 'w')
        debug_file.write(
            time.strftime('Log file created at %H:%M on %d %b %Y\n\n',
                          time.localtime()))
        debug_file.write('Hypatheon Client version: %s\n\n' % app_version)
        debug_file.close()

        os_system('cat "%s" "%s" >> "%s"' %
                  (output_file, error_file, debug_file_name), 0)  # no redirect
        _upload_path = debug_file_name
    except:
        pass   # if logging fails, we're too far gone to recover
    if show:
        err_msg = user_dialog(showerror, title,
                              display_messages['internal_error'])
    _internal_error_count -= 1


# -------------- Development only --------------- #

WID = []    # used to append widget values for use by debug windows below

_debug_disclaimer = \
    'For development use only; you may safely ignore or delete this window.'

# Construct a top-level window to display text with scrollbars.  Accept
# a procedure for adding buttons (or other widgets) at the bottom.  The
# procedure is passed the parent frame.  The text widget object is returned
# for later use to insert text.  The toplevel frame is optionally returned.

def _scrolled_text_display(title='Hypatheon Text Display',
                           intro=None, button_proc=null_proc,
                           tab_stops=(), return_frame=0):
    fr = Toplevel()
    fr.geometry(newGeometry=window_geometry)   ### '-0+50')
    if intro: Message(fr, aspect=2000, text=intro).pack(padx=10, pady=10)
    txt_fr = Frame(fr)
    if on_win:
        txt = Text(txt_fr, width=70, padx=10, pady=5, wrap=WORD,
                   tabs=tab_stops)
    else:
        txt = Text(txt_fr, width=70, padx=10, pady=5, wrap=WORD,
                   background=colors['text_bg_color'], tabs=tab_stops)
    scroll = Scrollbar(txt_fr, command=txt.yview)
    txt.configure(yscrollcommand=scroll.set)
    fr.bind('<Key-Prior>', lambda event: txt.yview_scroll(-1, PAGES))
    fr.bind('<Key-Next>',  lambda event: txt.yview_scroll(1, PAGES))
    fr.bind('<Enter>', lambda event: fr.focus_set())
    txt.pack(side=LEFT, fill=BOTH, expand=YES)
    scroll.pack(side=LEFT, fill=Y)
    txt_fr.pack(padx=5, pady=5, fill=BOTH, expand=YES)
    button_proc(fr)
    fr.title(string=title)
    if return_frame: return fr, txt
    else:            return txt

_debug_values = []

def _display_debug_list(*args):
    def add_buttons(fr):
        but_fr = Frame(fr)
        Button(but_fr, text='Clear List', command=lambda : clear_all()) \
            .pack(side=LEFT, padx=5, pady=2)
        Button(but_fr, text='Refresh', command=lambda : show_all()) \
            .pack(side=LEFT, padx=5, pady=2)
        but_fr.pack()
    txt = _scrolled_text_display(title='Debug Log for Hypatheon',
                                 intro=_debug_disclaimer,
                                 button_proc=add_buttons)
    def clear_all():
        global _debug_values
        _debug_values = []
        txt.delete(1.0, END)
    def show_all():
        txt.delete(1.0, END)
        for v in _debug_values: txt.insert(END, v)
        txt.insert(END, '\nTotal of %d entries\n' % len(_debug_values))
        txt.yview_moveto(1.0)
    show_all()

def display_debug_eval(*args):
    expr_above, expr_below = [], []
    ent = [None]
    def add_buttons(fr):
        but_fr = Frame(fr)
        if using_ttk or using_tile:
            ent[0] = Entry(but_fr, font=fixed_text_font, width=80)
        else:
            ent[0] = Entry(but_fr, width=80, highlightthickness=3,
                           font=fixed_text_font,
                           background=colors['word_bg_color'],
                           highlightcolor=colors['highlight_color'])
        ent[0].pack(padx=5, pady=2)
        Button(but_fr, text='Clear Display', command=lambda : clear_all()) \
            .pack(pady=2)
        but_fr.pack()
    try:
        fr, txt = _scrolled_text_display(title='Debug Evaluator for Hypatheon',
                                         intro=_debug_disclaimer,
                                         button_proc=add_buttons, return_frame=1)
    except:
        trace = StringIO()
        print_exc(100, trace)
        internal_error(trace.getvalue(), 'text display')
    def clear_all():
        txt.delete(1.0, END)
    def eval_expr(dummy):
        raw_expr = ent[0].get()
        # Filter out extraneous Unicode characters.  Tk 8.5 on OS X seems
        # to insert \uf700 characters when arrow keys are pressed.
        expr = ''.join([ c for c in raw_expr if ord(c) < 128 ])
	ent[0].delete(0, END)
	expr_above.extend(expr_below)
	expr_above.append(expr)
	del expr_below[:]
        trace = StringIO()
        try:
            value = eval(expr, sys.modules['__main__'].__dict__)
            txt.insert(END, '------------------\n%s =\n' % expr + \
                       '%s\n' % repr(value))
        except:
            print_exc(1, trace)
            txt.insert(END, '------------------\n%s =\n' % expr)
            txt.insert(END, trace.getvalue()) 
        txt.yview_moveto(1.0)
    def prev_expr():
	ent[0].delete(0, END)
	if expr_above:
	    prev = expr_above[-1]
	    del expr_above[-1]
	    expr_below.insert(0, prev)
	    ent[0].insert(0, prev)
    def next_expr():
	ent[0].delete(0, END)
	if expr_below:
	    next = expr_below[0]
	    del expr_below[0]
	    expr_above.append(next)
	    ent[0].insert(0, next)
    def key_press(event):
	if event.keysym in ('Up','KP_Up'):
	    prev_expr()
	elif event.keysym in ('Down','KP_Down'):
	    next_expr()
    ent[0].bind('<Key>',    lambda event: key_press(event))
    ent[0].bind('<Return>', lambda event: eval_expr(event))
    ent[0].bind('<Control-u>', lambda event: ent[0].delete(0, END))
    fr.bind('<Enter>', lambda event: ent[0].focus_set())

def _generate_test_error(*args):
    try:
        1 / 0
    except:
        trace = StringIO()
        print_exc(100, trace)
        internal_error(trace.getvalue(), 'Test error', 0)

root.bind('<Shift-F2>', _display_debug_list)   # Shift-F2 fails on Linux
root.bind('<Shift-F3>', display_debug_eval)
root.bind('<Control-F2>', _display_debug_list)
root.bind('<Control-F3>', display_debug_eval)
root.bind('<Control-F9>', _generate_test_error)

def exec_string(string, module='__main__'):
    exec string in sys.modules[module].__dict__

def emit_log_file():
    if not (check_assertions or collect_time_data): return
    file_name = time.strftime('%H.%M_%d-%b-%Y', time.localtime())
    log_file = open(os.path.join(user_directory, 'log', file_name), 'w')
    log_file.write('Automatic log of Hypatheon development version %s.\n' \
                   % version)
    log_file.write(time.strftime('Log file created at %H:%M on %d %b %Y\n\n',
                                 time.localtime()))
    log_file.write('All measured durations are elapsed times in '
                   'seconds or microseconds.\n\n')
    for item in _debug_values: log_file.write(item)
    log_file.close()

# Following are for test only.

def _test_run_time(n, proc=null_proc):
    # elapsed time in usec to run proc n times
    i = 0
    start = time.time()
    while i < n:
        proc(i)
        i += 1
    stop = time.time()
    debug_log(time.strftime('%H:%M:%S', time.localtime(start)),
              '  Elapsed time = %6d usec' % int((stop - start) * 1000000),
              ' test run time')

def _scale_color(color, factor):
    rgb = root.winfo_rgb(color)
    return '#%02x%02x%02x' % \
              tuple(map(lambda c: min(int(round((c%256)*factor)), 255), rgb))

_attr_cache = {}

def getfn(name):
    if name in _attr_cache:
        return _attr_cache[name]
    for m in sys.modules.values():
        try:
            attr = getattr(m, name)
        except AttributeError:
            continue
        _attr_cache[name] = attr
        return attr
    raise AttributeError
