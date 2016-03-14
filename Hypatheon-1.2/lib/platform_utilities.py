
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# OS-specific operations are defined in this module.  Mostly these
# are used to invoke commands or external programs with various
# combinations of shell controls.  Some GUI-based operations are
# also included.

# Currently these features are limited to Unix family execution
# environments.  They have been tested with Linux and OS X.
# They might need adjustment for BSD platforms.


import os, sys, re, signal, thread, Queue

from app_globals       import *

from preference_utilities import user_prefs


on_osx = sys.platform == 'darwin'

command_timeout = user_prefs.getint('Application', 'command_timeout')

cmd_trunc_len = 100000

head_cmd = 'head -c %s' % cmd_trunc_len


def escaped_blanks(str, n):
    for i in range(n):
        str = str.replace(' ', '\ ')   # protect file names in shell commands
    return str

def quote_wrap(str, quote_null=0):
    if not (str or quote_null) or str.startswith('"') and str.endswith('"'):
        return str
    return '"%s"' % str


# # Following functions are used throughout the application to invoke
# # external OS commands and standard utility programs.

# def make_shell_command(command, timeout=None):
#     # command is of form: 'cmd %s'  # path_name
#     # stdout output returned as string, stderr output discarded
#     # timeout in seconds to abort
#     def invoke_command(path_name=None):
#         # change later to popen3/4???
#         # invoke command, protect path name with quotes
#         if path_name: cmd = command % ('"%s"' % path_name)
#         else:         cmd = command
#         ### might want to save error output in a log file
# #        pipe = os.popen('(%s) 2> /dev/null' % cmd)
# #        output = pipe.read()
# #        exit_code = pipe.close()
#         pp = subprocess.Popen('(%s) 2> /dev/null' % cmd, shell=True,
#                               stdout=subprocess.PIPE, bufsize=-1)
#         output, errors = pp.communicate()
#         if pp.returncode: return ''   # add reporting or other actions later
#         return output
#     return invoke_command
            
# def shell_command_with_err(command):
#     # command is of form: 'cmd %s'  # path_name
#     # output returned as string, including both stdout and stderr 
#     def invoke_command(path_name=None):
#         # invoke command, protect path name with quotes
#         if path_name: cmd = command % ('"%s"' % path_name)
#         else:         cmd = command
#         # pipe_to, pipe_from_err = os.popen4(cmd)
#         p4 = subprocess.Popen(cmd, shell=True, bufsize=-1,
#                               stdout=subprocess.PIPE,
#                               stderr=subprocess.STDOUT)
#         output, errors = p4.communicate()
#         return output
#     return invoke_command


# Following provides a protected way to invoke user supplied shell
# commands.  The shell /bin/bash is spawned explicitly using a
# specially constructed command string.  Returns pid and pipe
# for command shell process unless command is ill-formed, in which
# case a message is returned.

### consider adding command output truncation

def shell_command_with_timeout(command_str, timeout=command_timeout):
    # command is of form: 'cmd %s'  # path_name
    # output returned as string, including both stdout and stderr 
    def invoke_command(path_name=None):
        command = command_str.strip()
        if not command: return ''
        # invoke command, protect path name with quotes
        num_sites = command.count('%s')
        if path_name and num_sites == 0:
            return "***** Try again: insert %s into your command."
        if not path_name and num_sites > 0:
            return "***** No path name(s) to substitute for %s."
        if path_name:
            try:
                cmd = command % ((quote_wrap(path_name),) * num_sites)
            except:
                return "***** Malformed command template. " \
                       "Check for extra '%' characters."
        else:
            cmd = command
        if cmd[0] == '(' and cmd[-1] == ')': cmd = cmd[1:-1]
        # outer quotes ('..') needed so spawn script keeps intact as one arg
        # pipe to cat gives exit code 0 and preserves shell error messages
        cmd = "'(%s) | cat'" % cmd.replace('"', r'\"')
        return spawn_timeout_pipe('/bin/bash', '-c', cmd, timeout, '', 1, 2)()
    return invoke_command

# Spawn exec_file on args in left_args + "path" + right_args with a
# limit of timeout seconds.  All spaces in left_args and right_args
# are taken to be interword spaces as interpreted by the shell.
# Direct stdout and stderr with values: None - discard,
# 1/2 - return as string, else - file for redirection.
# Default: return stdout as a string; discard stderr.
# Returns command pid (in case interrupt needed) and command in, out pipes.

def spawn_timeout_pipe(exec_file, left_args, right_args, timeout='',
                       trunc_len='', stdout=1, stderr=None):
    def invoke_command(path_name=''):
        # construct pipe command, protect args with quotes
        spawn_cmd = '"%s" "%s" %s %s %s %s %s' % \
                    (spawn_bin, exec_file, quote_wrap(left_args, 1),
                     quote_wrap(path_name, 1),
                     quote_wrap(right_args, 1), timeout, trunc_len)
        if stdout == None: redirect_o = ' > /dev/null'
        elif stdout == 1:  redirect_o = ''
        else:              redirect_o = ' > ' + stdout
        if stderr == None: redirect_e = ' 2> /dev/null'
        elif stderr == 2:  redirect_e = ' 2>&1'
        else:              redirect_e = ' 2> ' + stderr
        full_cmd = '%s%s%s' % (spawn_cmd, redirect_o, redirect_e)
        p3 = subprocess.Popen(full_cmd, shell=True, bufsize=-1, close_fds=True,
                              stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        cmd_pid = int(p3.stdout.readline())      # should respond immediately
        queue = Queue.Queue()
        thread.start_new_thread(listen_for_cmd_out, (queue, p3))
        return cmd_pid, queue
    return invoke_command

# A separate listener thread is used to wait for command output,
# then close both pipes.

def listen_for_cmd_out(queue, p3):
    cmd_out, cmd_err = p3.communicate()
    queue.put(cmd_out)

# Use one of these two functions to finish up spawned command.
# Protocol is that last 6 chars of command output is the exit code.
# Raises CommandTimeout if timeout or CommandAbort if user aborted or
# CommandFailure if other error detected.

def parse_cmd_out(cmd_output):
    exit_code = int(cmd_output[-6:])
    if   exit_code == 1: raise CommandTimeout, 'Command timed out'
    elif exit_code == 2: raise CommandAbort, 'Command interrupted by user'
    elif exit_code  > 8:
        raise CommandFailure, \
              'Command failed with exit code %s' % (exit_code - 8)
    return cmd_output[:-6]     # lop off exit code

def abort_spawned_cmd(cmd_pid):
    try:
        os.kill(cmd_pid, signal.SIGTERM)
    except OSError:
        pass        # process no longer exists


# # Spawn a process and truncate output to an initial prefix.  Assume
# # that exec_file needs at most one instance of path name.

# def truncated_spawn(exec_file, left_args, right_args, timeout='',
#                     stdout=1, stderr=None):
#     def invoke_cmd(path_name=''):
#         # enable pipefail option to trigger error if any pipe segment does
#         cmd = 'set -o pipefail; %s %s %s %s' % \
#               (exec_file, left_args, quote_wrap(path_name), right_args)
#         # outer quotes ('..') needed so spawn script keeps intact as one arg
#         cmd = "'%s'" % cmd.replace('"', r'\"')
#         pid, queue = \
#              spawn_timeout_pipe('/bin/bash', '-c', cmd, timeout,
#                                 cmd_trunc_len, stdout, stderr)()
# #             spawn_timeout_pipe('/bin/sh', '-c', cmd, timeout,
#         return parse_cmd_out(queue.get()) # can raise one of several exceptions
#     return invoke_cmd

    
# def check_os_command(command):
#     # check for existence of shell command/program; returns exit code
#     return subprocess.call('which %s > /dev/null 2> /dev/null' % command,
#                            shell=True)
#     # pipe = os.popen('which %s > /dev/null 2> /dev/null' % command)
#     # return pipe.close()


#---------------

### Following are GUI-related.
### Some might be moved/added to preferences.

# Shell commands to invoke external terminal windows (shells).
# For OS X, invoke a special script to launch the Terminal application.
# For Linux, each entry is of the form:
#     (<display_name>, <start-cmd>)
# can be started with a shell command such as:
#     <start-cmd> <interior-cmd> <arg 1> ...
# Common terminal invocations for standard shells (sh, bash, tcsh):
#     gnome-terminal -x '<shell> -s <arg 1> <arg 2> ...'
#     konsole -e <shell> -s <arg 1> <arg 2> ...
#     xterm   -e <shell> -s <arg 1> <arg 2> ...

if on_osx:
    invoke_term = '"%s"' % os.path.join(bin_dir, 'invoke_osx_terminal')
    terminal_windows = (
        ('Terminal (bash)', invoke_term + ''' shell "bash -s %s"'''),
        ('Terminal (csh)', invoke_term + ''' shell "csh -s %s"'''),
        )
else:
    terminal_windows = (
        ('Gnome Terminal',
         'gnome-terminal --working-directory "%s" -e "%s -s %s"'),
        ('KDE Konsole', 'konsole --workdir "%s" -e %s -s %s'),
        ('X Terminal (xterm)', """xterm -e 'cd %s; %s -s %s'"""),
        )


# Shell commands to invoke external editors for text files.
# Each entry is of the form:  (<display_name>, <command>)
# Commands contain %s where path name of file is required.

if on_osx:
    invoke_term = os.path.join(bin_dir, 'invoke_osx_terminal')
    text_editors = (
        ('Emacs', '"%s" editor emacs "%%s"' % invoke_term),
        ('Vim', '"%s" editor vim "%%s"' % invoke_term),
        )
else:
    text_editors = (
        ('Emacs', 'emacs "%s"'),
        ('Vim (Gnome)', 'gnome-terminal -e vim "%s"'),
        ('Vim (Konsole)', 'konsole -e vim "%s"'),
        ('Gedit', 'gedit "%s"'),
        )

