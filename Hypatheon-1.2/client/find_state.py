
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Create a class for highlighting substring matches then displaying
# and tracking occurrence counts.  These will appear as short
# annotations in the upper right corner of the display window.
# Methods have the side effect of updating widgets in the parent object.

from client_globals import *

many_threshold = 100                # no of search hits before declaring 'many'

#------------

class Find_State(object):
    def __init__(self, parent, display, content_view, mod_time):
        self.parent = parent           # parent object
        self.display = display         # text window where file displayed
        self.file_mtime = mod_time
        self.prev_index = 0            # 0: headline, 1: find
        self.prev_find_pattern = None
        self.prev_occ_values = [[1, 0, 0], [1, 0, 0]]  # fwd dir, 0 occurrences
        self.find_sites = []
        self.currently_showing = None
        self.revert_tag = None
        self.clear_occurrence()

    def save_occurrence_state(self, content_view):
        self.find_pattern = self.parent.find_entry.get()
        if content_view:
            self.cur_site = self.parent.cur_site
            self.hterm_total_count = self.parent.hterm_total_count

    # This method is called when a file is redisplayed.  Its occurrence
    # count info is recalled and redisplayed.
    
    def restore_occurrence_state(self, content_view, mod_time=None):
        self.parent.find_entry.delete(0, END)
        self.parent.find_entry.insert(END, self.find_pattern)
        if content_view:
            self.parent.cur_site = self.cur_site
            self.parent.hterm_total_count = self.hterm_total_count
        if mod_time == None or mod_time == self.file_mtime:
            self.show_occurrence(1-self.prev_index)
            # do prev index last so it gets highlighted
            self.show_occurrence(self.prev_index)
            if self.currently_showing:
                self.display.tag_add(*self.currently_showing[1:])
                self.highlight_line(*self.currently_showing[:2])
            else:
                self.parent.find_occurrence.destroy()
                self.parent.find_occurrence = None
        else:
            self.clear_occurrence()
            self.show_occurrence(0, 'file_changed')
            self.file_mtime = mod_time

    def clear_occurrence(self):
        if self.currently_showing:
            self.display.tag_configure(self.revert_tag,
                                       foreground=colors['term_occ_fg'])
            self.display.tag_delete('highlight_line')
            self.currently_showing = None
        if self.parent.find_occurrence:
            self.parent.find_occurrence.destroy()
            self.parent.find_occurrence = None

    # When search terms or find buttons are selected, this method is called
    # to display and update occurrence count information.
    
    def show_occurrence(self, index, dir=None, occurrence=None, total=None):
        # index = 0 or 1 for search term vs Find pattern as source of match
        def occ_line():
            # offset dir values of -1, +1
            if total >= many_threshold:
                return '%s %d of many' % (dir_indicator[1+dir], occurrence)
            else:
                return '%s %d of %s' % \
                       (dir_indicator[1+dir], occurrence, total)
        # dir == None when restoring from state info
        if dir == None:
            dir, occurrence, total = self.prev_occ_values[index]
            if occurrence: line = occ_line()
            else:          line = '        '
        elif dir == 'file_changed':
            line, occurrence = 'Recently changed', 1
            self.currently_showing = None
        elif type(occurrence) is str:                  # off-nominal case
            if total == 0:
                self.prev_occ_values[index] = [dir, 0, 0]  # reset counters
            self.currently_showing = None
            line = '%s %s' % (dir_indicator[1+dir], occurrence)
        else:
            if occurrence == None:
                self.prev_occ_values[index][0] = dir
                occurrence, total = self.prev_occ_values[index][1:]
            else:
                self.prev_occ_values[index] = [dir, occurrence, total]
            line = occ_line()
        if not self.parent.find_occurrence and occurrence != None:
            bg_color = colors['highlight_line']
            occ_frame = Frame(self.display, bg=bg_color)
            occ_labels = [ Label(occ_frame, bg=bg_color, pady=0)
                           for row in 0,1 ]
            for label in occ_labels: label.pack(pady=0, anchor=W)
            self.parent.find_occurrence = occ_frame
            self.parent.occurrence_labels = occ_labels
            occ_frame.place(relx=1.0, rely=0.0, anchor=NE)
        self.parent.occurrence_labels[index].configure(
            text=line, fg=colors['muted_red'])
        self.parent.occurrence_labels[1-index]['fg'] = colors['gray_red']

    # When the focus is advanced to a new search term instance, it is
    # highlighted in context, and its entire line is given background
    # color to make it stand out.
    
    def highlight_line(self, dummy, new_tag):
        disp = self.display
        if self.revert_tag:
            disp.tag_configure(self.revert_tag,
                               foreground=colors['term_occ_fg'])
        disp.tag_delete('highlight_line')
        tag_ranges = disp.tag_ranges(new_tag)
        eval_assertion(lambda : tag_ranges == (),
                       'highlight_line tag ranges check',
                       new_tag)
        if not tag_ranges: return    # just in case...
        site = tag_ranges[0]
        line = int(float_tk(site))
        ### use beginning of line Tk feature:
        disp.tag_add('highlight_line', float(line), '%s.0' % (line+1))
        disp.tag_configure('highlight_line',
                           background=colors['highlight_line'])
        disp.see(site)
        disp.tag_configure(new_tag, foreground=colors['find_text_color'])
        self.currently_showing = (site, new_tag) + tag_ranges
        self.revert_tag = new_tag
