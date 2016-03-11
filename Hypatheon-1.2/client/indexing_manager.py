
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# When the client user initiates an indexing operation, the process is
# managed by this module.  The actual indexing is performed by a
# separate process.  Pipes will be established between the client and
# the indexing process to enable control and receive progress updates.
# A listener thread is started to accept information from the pipe.

import os, sys, time, string, glob, re, signal

from app_globals    import *
from db_connect     import *
from client_globals import *
from widget_utils   import *

import thread, Queue


#-----------------

end_signals = ('done', 'warning', 'error', 'canceled', 'killed')

class ProgressState(Queue.Queue):
    def __init__(self, delay):
        Queue.Queue.__init__(self)
        self.state = 'active'
        self.start_time = int(time.time())
        self.cum_time = 0
        self.extract_time = 0
        self.tc_time = 0
#         self.delay_value = delay

# A generic progress-update protocol is observed with the indexing process.
# The following listener thread monitors update messages, each a single text
# line to be interpreted as needed by originator.  End of processing is
# indicated by a value in end_signals.

def listen_for_progress(pipe, queue):
    while True:
        update = pipe.readline()
        if not update: break    ### other actions?
        update = tuple(update.split())
        queue.put(update)
        if update and update[0] in end_signals: break
    pipe.close()


# Background indexing is initiated by first identifying the theories and
# displaying summary counts.

def build_progress_table(parent):
    rows = (('    ', '     Libraries', '   Theories', '   '),
            ('  PVS libraries, theory files:   ',   '0', '0', ''),
            ('  Theory data extracted from PVS:  ', '0', '0', ''),
            ('  Generated or prelude theories:',   '0', '0', ''),
            ('  Inserted into database:', '0', '0', ''))
    return build_table(parent, (lambda w,t: Label(w, text=t),) * 4,
                       rows, (W, E, E, E))

# Progress update protocol:
#   ('process_id', ...), ('file_counts', ...), ('delete_count', ...),
#   ('tc_start', lib-name),  ('tc_done', message), ('tc_aborted', message),
#   ('extract_counts', ...), ..., ('extract_counts', ...),
#   ('orphan_theories', lib-name, thy-name1, ...),
#   ('extract_files', lib-name, thy-name1, ...),
#   ('insert_counts', ...), ..., ('insert_counts', ...),
#   'update_indexes', '(update_stats yes/no)', 'extraction_done', 'done'
#   ('notice' ...)  can be inserted to emit warning color

# The main procedure interface takes the profile name and a few control
# values to start the indexing process.

def background_indexing(prev_fr, collec_name, db_version, lib_names,
                        delay, purge_old, update_stats, ordered=0,
                        status_fn=None):
    detailed_log = open(os.path.join(log_dir, 'indexing_details'), 'w')
    emit_log_entry(detailed_log, 'Indexing libraries: %s.\n' % lib_names)
    progress = ProgressState(delay)
    dynamic_color = 'dark blue'
    success_color = 'green4'
    warning_color = colors['muted_red']
    final_message = {
        'done':     ('completed successfully', success_color, 1),
        'warning':  ('completed with warnings', warning_color, 1),
        'error':    ('terminated abnormally due to an error', 'red', 0),
        'canceled': ('been canceled by request', 'blue', 0),
        'killed':   ('been canceled by request; forcible termination '
                     'was required', 'blue', 0) }
    cancel_btn, pause_btn, resume_btn, close_btn = 3,2,1,0
    incomplete_msg = \
        "Some libraries or theories were not indexed. Only theories " \
        "imported by 'top.pvs' are included. Also, typecheck failures cause " \
        "libraries to be skipped. Review the preceding messages " \
        "to find where problems occurred.\n"

    def elapsed_time(deduction=0):
        cum_time = progress.cum_time + int(round(time.time())) \
                   - progress.start_time - deduction
        hms = cum_time//3600, (cum_time%3600)//60, cum_time%60
        return cum_time, ('%d:%02d:%02d' % hms)

    # A progress window provides status information and allows the user
    # make changes after indexing has begun.
    
    def make_window(fr):
        def update_button_states(normal_buttons, disabled_buttons):
            for b in normal_buttons:
                buttons[b]['state'] = NORMAL
            for b in disabled_buttons:
                buttons[b]['state'] = DISABLED

        def cancel_indexing():
            confirm_cancel = dialog_messages['confirm_indexing_cancel']
            if not confirmation_dialog(fr, *confirm_cancel):
                return
            try:
                add_prog_msg('\nTrying to cancel -- please stand by (30)...',
                             'blue')
                print >> pipes[0], 'cancel'
                pipes[0].flush()
                ### don't close pipes yet; let process finish
                # for i in (0,1): pipes[i].close()
            except:
                pass   # process already dead
            progress.state = 'cancel_wait'
            progress.cancel_timeout = time.time() + 30.0
            progress.cancel_update_time = time.time() + 5.0
            fr.after(100, update_button_states,
                     (), (cancel_btn, pause_btn, resume_btn))
            
        def pause_indexing():
            try:
                add_prog_msg('\nTrying to pause -- please stand by...', 'blue')
                print >> pipes[0], 'pause'
                pipes[0].flush()
            except:
                progress.state = 'done'    # process died already
                return
            progress.state = 'paused'
            progress.cum_time += int(time.time()) - progress.start_time
            fr.after(100, update_button_states, (resume_btn,), (pause_btn,))
            
        def resume_indexing():
            try:
                print >> pipes[0], 'resume', 0
                pipes[0].flush()
            except:
                progress.state = 'done'    # process died already
                return
            progress.state = 'active'
            progress.start_time = int(time.time())
            fr.after(100, update_button_states, (pause_btn,), (resume_btn,))

        button_fr, buttons = \
            button_row(fr,
                       ((close_button_text, lambda : fr.destroy(), 0, 1),
                        ('Resume', resume_indexing, 0, 1),
                        ('Pause', pause_indexing),
                        ('Cancel', cancel_indexing),
                        ),
                       'Indexing', size=1, default=None)
        Frame(button_fr).pack(side=LEFT, fill=X)
        button_fr.pack(side=BOTTOM, padx=20, pady=10, fill=X)

        # A "progress table" shows the file scan counts and displays how
        # many have been completed so far.
        
        Message(fr, aspect=1000, justify=LEFT, font=text_font,
                text=display_messages['indexing_in_progress']
                ).pack(padx=10, pady=10)
        fr2 = Frame(fr, width=200)
        Label(fr2, fg=dynamic_color, text='Indexing time:    ').pack(side=LEFT)
        clock = Label(fr2, fg=dynamic_color, text='0:00:00')
        clock.pack(side=RIGHT)
        fr2.pack(pady=5)
        fr3, prog_table = build_progress_table(fr)
        fr3.configure(relief=SOLID, bd=2)
        fr3.pack(pady=5)
        fr4, prog_msgs = \
             scrolled_text_widget(fr, width=70, height=30, font=text_font)
        fr4.pack(padx=10, pady=10, fill=BOTH, expand=YES)
        progress_buffer = os.path.join(tmp_dir, 'progress')
        open(progress_buffer, 'w').close()
        progress_file = open(progress_buffer)
        
        def add_prog_msg(msg, color='black', tail='\n'):
            tag = 'prog_msg_%s' % color
            line = msg + tail
            prog_msgs.insert(END, line, tag)
            prog_msgs.tag_configure(tag, foreground=color)
            prog_msgs.see(END)
            try:
                detailed_log.write(line)
            except:
                pass    # log file already closed
        add_prog_msg("Scanning for theory files within selected libraries...")
        progress.file_counts = [0, 0]
        progress.extract_counts = [0, 0, 0]
        progress.insert_counts = [0, 0]
        progress.found_unindexed = False
        indexing_process_ids = []
        all_unindexed = []
        unindexed_theories = []

        # After a successful indexing run, some query pages and their
        # associated objects might contain stale database IDs.  We need
        # to purge them so later actions don't trigger errors.

        closing_msg = (
            "\n\nAll currently open query pages are being closed "
            "because library indexing can invalidate information "
            "cached from the database. If desired, you can use the "
            "Edit menu item Redo Previous Queries to recall recently "
            "invoked queries.")

        def indexing_process_done(msg, color, check_status):
            add_prog_msg('\nIndexing process has %s.' % msg, color)
            for i in (0,1):
                try:
                    pipes[i].close()
                except IOError:
                    pass         # pipe already closed
            update_button_states((close_btn,),
                                 (cancel_btn, pause_btn, resume_btn))
            buttons[close_btn]['default'] = ACTIVE
            fr.bind('<Return>', lambda *args: fr.destroy())
            if progress.state in ('done', 'warning'):
                add_prog_msg(closing_msg, 'blue')
                app_state['client'].gui.notebook_panel.delete_tabbed_pages()
            progress.state = 'close_wait'
            fr.update_idletasks()
            if check_status and status_fn:
                status_fn(fr)     # show database status

        # The indexing process can send back progress updates as short
        # text messages having keywords and numbers.  After each phase,
        # progress information is posted to a scrolling display.
        
        def handle_progress_update(update):
            if not update: 
                prog_msgs.insert(END, '\n')   # blank line
            elif update[0] in end_signals:
                progress.state = update[0]
                if update[0] in ('done', 'warning'):
                    if update_stats:
                        add_prog_msg("...done.\n", success_color)
                    if update[0] == 'warning':
                        add_prog_msg("NOTE: %s.\n" % ' '.join(update[1:]))
#                    if progress.extract_counts[:2] != progress.file_counts:
                    if progress.found_unindexed:
                        add_prog_msg(incomplete_msg, warning_color)
                    set_db_cache_size(collec_name=collec_name)
                elif update[0] == 'error':
                    add_prog_msg("...aborted.\n", 'red')
                    add_prog_msg("Indexing error: %s" % ' '.join(update[1:]))

                ins_time, ins_string = elapsed_time(progress.extract_time)
                add_prog_msg("Total insertion time: %s\n" % ins_string)
                progress_file.close()
                detailed_log.close()
                if all_unindexed:
                    add_prog_msg('\nSummary of unindexed files and theories:'
                                 '\n\n%s' %
                                 ''.join([ '  %s:  %s\n' % 
                                           (lib, ', '.join(theories))
                                           for lib, theories in all_unindexed ]),
                                 warning_color)
                return
            elif update[0] == 'extract_counts':
                for c in (1,2):
                    prog_table[2][c].configure(text=str(update[c]))
                prog_table[3][1].configure(text=str(update[1]))
                prog_table[3][2].configure(text=str(update[3]))
                progress.extract_counts = map(int, update[1:4])
            elif update[0] == 'extract_files':
                unindexed = unindexed_theories + \
                            [ '%s.pvs[*]' % f for f in
                              unindexed_files(update[1], update[2:]) ]
                if unindexed:
                    all_unindexed.append((update[1], unindexed))
                    add_prog_msg("\nThe following PVS theories or files "
                                 "might not be processed:\n   %s\n" 
                                 % ', '.join(unindexed), warning_color)
                    del unindexed_theories[:]
                    progress.found_unindexed = True
                    ### also write to log file
            elif update[0] == 'orphan_theories':
                unindexed_theories.extend(update[2:])
            elif update[0] == 'tc_start':
                progress.tc_time = 1
            elif update[0] == 'tc_done':
                if progress.tc_time < 60:
                    add_prog_msg('   ', tail='')
                else:
                    add_prog_msg('')
                progress.tc_time = 0
                add_prog_msg(' '.join(update[1:]))
            elif update[0] == 'insert_counts':
                for c in (1,2):
                    prog_table[4][c].configure(text=str(update[c]))
                progress.insert_counts = map(int, update[1:3])
            elif update[0] == 'update_stats':
                add_prog_msg("\n...library indexing done.\n", success_color)
                buttons[close_btn]['state'] = DISABLED    # pause ###???
            elif update[0] == 'delete_count':
                if update[1] != 'none':
                    add_prog_msg("...done.\n", success_color)
                    add_prog_msg("Purged %s deleted files from database.\n"
                                 % update[1])
                add_prog_msg("Starting library indexing.  "
                             "This could take a while (many minutes)...")
            elif update[0] == 'file_counts':
                add_prog_msg("...done.\n", success_color)   # file scan
                progress.file_counts = map(int, update[1:3])
                for c in (1,2):
                    prog_table[1][c].configure(text=str(update[c]))
            elif update[0] == 'extraction_done':
                ext_cum_time, ext_cum_string = elapsed_time()
                add_prog_msg("\nTotal extraction time: %s\n" % ext_cum_string)
                progress.extract_time = ext_cum_time
            elif update[0] == 'tc_aborted':
                add_prog_msg('\n' + ' '.join(update[1:]), warning_color)
            elif update[0] == 'process_id':
                indexing_process_ids.extend(update[1:])
            elif update[0] == 'notice':
                add_prog_msg(' '.join(update[1:]), warning_color)
            else:
                add_prog_msg(' '.join(update))

        # Once per second the indexing progress is checked and status
        # information is updated for the user.

        def indexing_progress():
            if progress.state == 'active':
                clock.configure(text=elapsed_time()[1])
                tc_time = progress.tc_time
                if tc_time > 0:
                    if tc_time % 60 == 0:
                        add_prog_msg(str(tc_time // 60), tail='')
                    elif tc_time % 6 == 0:
                        add_prog_msg('.', tail='')
                    progress.tc_time += 1
            elif progress.state in end_signals:
                indexing_process_done(*final_message[progress.state])
                emit_log_entry(main_log_file, "End of indexing process.")
                return  # will not reschedule this function
            elif progress.state == 'cancel_wait':
                # give indexer time to react to cancellation request
                cur_time = time.time()
                if cur_time > progress.cancel_timeout:
                    progress.state = 'cancel_wait2'
                elif cur_time > progress.cancel_update_time:
                    add_prog_msg('\nStill trying to cancel -- stand by (%s)...'
                                 % int(round(progress.cancel_timeout -
                                             cur_time)),
                                 'blue')
                    progress.cancel_update_time += 5.0
            elif progress.state == 'cancel_wait2':
                # graceful termination failed; kill indexing process and
                # all of its children
                for pid in indexing_process_ids:
                    try:
                        print >> pipes[0], 'kill' # indexer: kill process group
                        pipes[0].flush()
                    except OSError:
                        pass              # process already gone
                # finish log file for indexing process
                indexing_log = \
                    open(os.path.join(log_dir, indexing_log_name), 'a')
                emit_log_entry(indexing_log,
                               '+++++ Indexing canceled by client.')
                emit_log_entry(indexing_log, '<<<<< End of file indexing.')
                indexing_log.close()
                progress.state = 'killed'
#            for line in progress_file.readlines():
#                add_prog_msg(line.rstrip())
            while True:
                try:
                    update = progress.get_nowait()
                    handle_progress_update(update)
                except Queue.Empty:
                    break
            fr.update()       # update_idletasks() too weak here
            fr.after(1000, show_progress)  # schedule a return in one second

        # Initiate progress tracking.  It will reschedule itself as
        # needed after every pass.
        
        show_progress = EventHandler('Show indexing progress',
                                     indexing_progress, 0)
        emit_log_entry(main_log_file,
                       "Begin indexing process for selected libraries.")
        indexer_cmd = 'nice -n 15 "%s" %s "%s" %s %s %s 1 %s %s %s 2>> "%s"' \
                      % (os.path.join(bin_dir, 'run_indexer'),
                         collec_name, db_version, lib_names, '"index"',
                         delay, purge_old, update_stats, ordered,
                         os.path.join(log_dir, indexing_err_log))
        pp = subprocess.Popen(indexer_cmd, shell=True, bufsize=-1,
                              stdin=subprocess.PIPE,
                              stdout=subprocess.PIPE, close_fds=True)
        pipes = (pp.stdin, pp.stdout)
        fr.after(100, show_progress)
        thread.start_new_thread(listen_for_progress,
                                (pipes[1], progress))
        ### Releasing the grab enables other windows opened after this one
        ### to be closed normally.
        fr.grab_release()
        prev_fr.destroy()
        
    pop_up_toplevel_window(make_window, (), 'Hypatheon Library Indexing',
                           set_grab=1)
