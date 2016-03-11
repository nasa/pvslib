
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Dialogs and related processing for running OS commands and
# displaying returned results are collected in this module.


import os, sys, string, glob, thread, Queue

from client_globals import *
from widget_utils   import *


shell_cmd_timeout = user_prefs.get('Client', 'shell_cmd_timeout')


# Start up a terminal window using specified terminal command and user's
# preferred shell.  Accept a string with shell commands to be executed
# before terminal startup.  Optional args to pass to the new shell
# will be appended as blank-delimited strings.

def invoke_terminal(workdir, cmd_template, *args):
    if not workdir:
        workdir = '$HOME'
    if on_osx:
        term_cmd = '''%s 'cd "%s"' %s''' % (cmd_template, workdir, ' '.join(args))
        os_system(term_cmd, redirect=2, background=1)
    else:
        shell = user_prefs.get('System', 'command_shell')
        term_cmd = cmd_template % (workdir, shell, ' '.join(args))
        os_system(term_cmd, redirect=2, background=1)


# Pop up a top level window to collect and execute user's shell command.
# Can be supplied either a single path or a list of paths.  In the list
# case, can also invoke a separate editor window to filter the list.
# Also supports writing updated list to a file.

def _create_cmd_window(fr, message, header, path_or_list,
                       invoke_cmd, write_paths_fn=null_proc):
    list_case = isinstance(path_or_list, list)
    top_fr = Frame(fr)
    Label(top_fr, text=header).pack(side=LEFT, pady=5)
    
    # edit_state survives initial invocation of this function
    # list_case: it holds [active_list, hidden_list, edit window object]
    
    edit_state = [ None, None, None ]

    bottom_fr = Frame(fr)
    Label(bottom_fr, text='Timeout (seconds; 0 or blank to disable):',
          ).pack(side=LEFT)
    timeout_entry = entry_widget(bottom_fr, width=5, justify=RIGHT)
    timeout_entry.insert(0, shell_cmd_timeout)
    timeout_entry.pack(side=LEFT)
    
    def close_out():
        if edit_state[2]: edit_state[2].destroy()
        fr.destroy()
    def abort_cmd():   # can only be invoked when button state = normal
        abort_spawned_cmd(win_state[1])
        buttons[1]['state'] = DISABLED
    but_fr, buttons = \
        button_row(bottom_fr, ((close_button_text, close_out, 0),
                               ('Abort Command', abort_cmd, 0),),
                   default=None, padx=10)
    if not (using_ttk or using_tile):
        buttons[1]['activeforeground'] = 'red'  # Abort button
    buttons[1]['state'] = DISABLED
    but_fr.pack(side=RIGHT, pady=3)
    bottom_fr.pack(fill=X, side=BOTTOM, padx=20)

    if list_case:
        edit_state = [ path_or_list[:], [], None ]
        edit_cmd = EventHandler('Edit Path List for Shell Command',
                                lambda : _path_list_editor(edit_state,
                                                           write_paths_fn))
        MediumButton(top_fr, text='View/Edit Path List',
                     command=edit_cmd).pack(side=LEFT, padx=20)
    else:
        path_entry = entry_widget(top_fr, width=70)
        path_entry.insert(0, path_or_list)
        path_entry.pack(side=LEFT, padx=5)
    top_fr.pack()
    
    Message(fr, text=display_messages[message], foreground='dark blue',
            aspect=1500, justify=LEFT).pack(pady=10)
    cmd_fr = Frame(fr)
    Label(cmd_fr, text='Command:').pack(side=LEFT)
    entry = entry_widget(cmd_fr, width=60)
    entry.pack(side=LEFT, padx=5, fill=X, expand=YES)
    win_state = [0,0,0]    # [after_id, cmd_pid, cmd_queue]
    
    def invoke_shell(cmd):
        cmd_out.delete('1.0', END)
        fr.update_idletasks()
        if list_case: pth = edit_state[0]
        else:         pth = path_entry.get()
        result = invoke_cmd(cmd, pth, timeout_entry.get())
        if isinstance(result, basestring):
            cmd_out.insert(END, result)
        else:
            win_state[1:3] = result      # (cmd_pid, cmd_queue)
            buttons[1]['state'] = NORMAL
            wait_for_cmd(8)

    def wait_for_cmd(delay):
        try:
            cmd_output = win_state[2].get_nowait()
        except Queue.Empty:
            if delay < 250: delay *= 2
            win_state[0] = fr.after(delay, wait_for_cmd, delay)
            return
        try:
            output = parse_cmd_out(cmd_output)
        except CommandTimeout, err_msg:
            output = '***** %s' % err_msg
        except CommandAbort, err_msg:
            output = '***** %s' % err_msg
        except CommandFailure, err_msg:
            output = '***** %s' % err_msg
        buttons[1]['state'] = DISABLED
        if output == '':
            output = '<Command completed without output>'
        cmd_out.insert(END, output)
        win_state[0] = 0

    submit_cmd = EventHandler('Pipe Path(s) to Shell Command',
                              lambda *args: invoke_shell(entry.get()), fr)
    entry.bind('<Return>', submit_cmd)
    ThinButton(cmd_fr, text='Submit', min_width=1,
               command=submit_cmd).pack(side=LEFT, padx=3)
    cmd_fr.pack(padx=5, pady=5, fill=X)
    out_fr, cmd_out = \
            scrolled_text_widget(fr, width=70, height=20, wrap=WORD,
                                 horiz_scroll=1, font=small_fixed_font)
    out_fr.pack(padx=5, pady=5, fill=BOTH, expand=YES)
    entry.focus_set()

# An edit window is displayed on request for path lists.  The user can
# manipulate an active and hidden path list, which are saved in the
# parent window's state (variable path_list_list).

def _path_list_editor(path_list_list, write_paths_fn):
    def make_window(fr):
        Message(fr, text=display_messages['edit_path_list'],
                foreground='dark blue',
                aspect=1500, justify=LEFT).pack(pady=10)

        fr_a, active = scrolled_listbox(fr, width=80, height=18,
                                        font=small_fixed_font,
                                        horiz_scroll=1, selectmode=EXTENDED)
        fr_h, hidden = scrolled_listbox(fr, width=80, height=18,
                                        font=small_fixed_font,
                                        horiz_scroll=1, selectmode=EXTENDED)
        def update_path_list():
            path_list_list[0] = active.get(0, END)
            path_list_list[1] = hidden.get(0, END)
            fr.destroy()
        def copy_path_list():
            copy_text_clipboard(' '.join(active.get(0, END)))
        but_fr = Frame(fr)
        button_row(but_fr, (('Install Active Paths', update_path_list, 0),
                            ('Save Paths As...',
                             lambda : write_paths_fn(active.get(0, END)), 0),
                            ('Copy Path List', copy_path_list, 0),
                            ('Cancel', lambda : fr.destroy(), 0),),
                   padx=5)[0].pack(side=RIGHT, padx=20, pady=5)
        but_fr.pack(fill=X, side=BOTTOM)

        Label(fr, text='Active Path List:').pack(pady=2)
        for p in path_list_list[0]: active.insert(END, p)
        fr_a.pack(padx=20, pady=5, fill=BOTH, expand=YES)
        def move_items(from_listbox, to_listbox):
            moving = list(from_listbox.curselection())
            if not moving: return
            for i in moving:
                to_listbox.insert(END, from_listbox.get(i))
            moving.reverse()
            for i in moving: from_listbox.delete(i)
            to_listbox.see(END)

        action_fr = Frame(fr)
        MediumButton(action_fr, text='Hide Selected Paths %s' % u_wtrigdn,
                     command=lambda : move_items(active, hidden)
                     ).pack(side=LEFT, padx=10)
        MediumButton(action_fr, text='Restore Selected Paths %s' % u_wtrigup,
                     command=lambda : move_items(hidden, active)
                     ).pack(side=LEFT, padx=10)
        action_fr.pack(pady=8)
        Label(fr, text='Hidden Path List:').pack(pady=2)
        for p in path_list_list[1]: hidden.insert(END, p)
        fr_h.pack(padx=20, pady=5, fill=BOTH, expand=YES)

    path_list_list[2] = \
        pop_up_toplevel_window(make_window, (),
                               'View or Edit Active Path List',
                               top_margin=5, bottom_margin=0)


# Invoke an external shell command on a path (file or directory).

def invoke_cmd_on_path(direc, orig_path):
    if direc:
        path_type = 'Directory'
        message = 'invoke_shell_command_direc'
    else:
        path_type = 'File'
        message = 'invoke_shell_command_file'
    def make_window(fr):
        def invoke_cmd(cmd, path, timeout=''):
            if direc:
                cd_cmd = 'cd "%s"; %s' % (path, cmd)
                shell_out = shell_command_with_timeout(cd_cmd, timeout)()
            elif cmd.find('%s') >= 0 :
#            elif '%s' in cmd:                                  ### 2.3
                shell_out = shell_command_with_timeout(cmd, timeout)(path)
            else:
                if cmd.strip(): cmd = 'cat %s | ' + cmd
                shell_out = shell_command_with_timeout(cmd, timeout)(path)
            return shell_out
        _create_cmd_window(fr, message, 'Path: ',  ### '%s: ' % path_type,
                           orig_path, invoke_cmd)
    pop_up_toplevel_window(make_window, (),
                           'Invoke Shell Command on %s' % path_type,
                           top_margin=5, bottom_margin=0)

# Invoke an external shell command on a path list

def invoke_cmd_on_path_list(write_paths_fn, orig_path_list):
    def make_window(fr):
        def invoke_cmd(cmd, path_list, timeout=''):
            paths = ' '.join([ '"%s"' % p for p in path_list ])
            return shell_command_with_timeout(cmd, timeout)(paths)
        _create_cmd_window(fr, 'invoke_shell_command_paths',
                           'A list of %d paths is available for substitution.'
                           % len(orig_path_list), orig_path_list,
                           invoke_cmd, write_paths_fn)
    pop_up_toplevel_window(make_window, (),
                           'Invoke Shell Command on Path List',
                           top_margin=5, bottom_margin=0)

