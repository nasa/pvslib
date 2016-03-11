
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Provide a simple tabbed notebook widget allowing several "pages" to
# be created and managed.
#

import tkFont
from Tkinter import *
from client_globals import EventHandler, emit_log_entry, root, \
                           text_font, small_text_font

max_tabs = 10            # fixed number for now

test_win = Toplevel()    # used only to derive default widget attributes
test_win.withdraw()


# A tabbed notebook is implemented using Tk canvas features.  Each
# page is created externally and its widgets are packed inside a newly
# allocated frame, which is then placed on the canvas.  All page frames
# belong to the same canvas.  Selecting a tab causes its frame to be
# raised to the top of the stacking order.  Tab widgets are built from
# partially obscured polygons (simulating buttons) and a swatch that
# gets moved below the current tab to simulate a raised look effect.

class TabbedNotebook(object):
   def __init__(self, parent, label_width, page_width, page_height):
      self.label_width = label_width
      test_button = Button(test_win, text='Tab n')
      self.button_selected = test_button.cget('bg')
      selected_rgb = test_button.winfo_rgb(self.button_selected)
      def scale_rgb(rgb, factor):
         return '#%0.2x%0.2x%0.2x' % tuple(map(lambda n: int(factor * n), rgb))
      self.button_bg        = scale_rgb(selected_rgb, 0.8)
      self.button_active_bg = scale_rgb(selected_rgb, 0.9)
      test_win.destroy()
      
      button_border = 1  # 3
      button_height = 24 # 28
      self.top_edge_offset = button_height - button_border - 2 + 1 # + 10
      close_button_width = 21

      # An outer frame is used to hold the upper row of buttons/tabs, the
      # bar immediately beneath it, and the page canvas below.
      
      frame_bar_height = 1 # 8
      self.button_width = (page_width - close_button_width) // max_tabs - 2
      self.button_delta = self.button_width + 2
      max_tab_width = max_tabs*self.button_delta + close_button_width
      self.page_y_offset = self.top_edge_offset+frame_bar_height
      canv_frame = Frame(parent, relief=SOLID, highlightthickness=0, bd=1)
      canv = Canvas(canv_frame, relief=FLAT, width=page_width,
                    highlightthickness=0,
                    height=self.page_y_offset+page_height)

      self.frame_bar = Frame(canv, bg='gray20', relief=FLAT,
                             width=max_tab_width, height=frame_bar_height)
      self.frame_bar.place(x=0, y=self.top_edge_offset,
                           anchor=NW, relwidth=1.0)
      self.shade = Frame(canv, relief=FLAT,
                         width=max_tab_width, height=page_height)
      self.shade.place(x=0, y=self.page_y_offset, height=-self.page_y_offset,
                       relwidth=1.0, relheight=1.0, anchor=NW)
      
      self.swatch_frame = Frame(canv, borderwidth=0,relief=FLAT,
                                height=3, # button_border,
                                width=self.button_width - 2*button_border)
      self.swatch_home_x = button_border + 1
      self.swatch_home_y = self.top_edge_offset
      self.swatch_id = \
          canv.create_window(self.swatch_home_x, self.swatch_home_y,
                             window=self.swatch_frame, anchor=NW)
      def select_tab(event):
          x, y = event.x, event.y
          if y > self.page_y_offset: return
          index = (x - 1) // self.button_delta
          if index >= len(self.buttons): return
          self.buttons[index][3]()    # raise tab
      canv.bind('<Button-1>', select_tab)

      # A close button in the upper right corner deletes the current tab
      # and its page.
      
      def close_current_tab(event):
          if len(self.buttons) > 0:
              self.buttons[self.current_tab][4]()    # close procedure
      close_button_frame = Frame(canv, relief=RAISED, bd=1,
                                 width=close_button_width,
                                 height=close_button_width)
      close_button_frame.pack_propagate(0)
      Frame(close_button_frame).pack()
      close_button = Label(close_button_frame, text='X',
                           font=('Helvetica', 12, 'bold'))
      close_button.pack(fill=Y)   # fill=BOTH, expand=YES)
      Frame(close_button_frame).pack()
      close_button_frame.bind('<Enter>',
                              lambda e: close_button.config(foreground='red'))
      close_button_frame.bind('<Leave>',
                              lambda e: close_button.config(foreground='black'))
      close_button.bind('<Button-1>',
                        EventHandler('Close tab button', close_current_tab, 0))
      close_button_frame.place(relx=1.0, rely=0, anchor=NE)
      
      canv.pack(padx=0, pady=0, fill=BOTH, expand=YES)
      canv_frame.pack(padx=0, pady=0, fill=BOTH, expand=YES)
      self.canvas = canv
      self.swatch_frame.lower()
      
      self.next_tab = 0      # next index for new tabs
      self.tab_map = {}      # mapping from allocated to active indexes
      self.current_tab = 0
      self.buttons = []      # active tab descriptors

   # Right now adding a new tab is the only method in this class.  When
   # the maximum number of tabs is exceeded, the oldest tab is deleted.
   
   def add_new_tab(self, page, label, clean_up):
      if len(self.buttons) >= max_tabs:
         oldest = min(self.tab_map.keys())
         self.buttons[self.tab_map[oldest]][4]()   # close oldest tab first
      this_tab = self.next_tab    # index reserved, even after deletion
      self.tab_map[this_tab] = len(self.buttons)

      page.place(x=0, y=0, in_=self.shade,
                 relwidth=1.0, relheight=1.0, anchor=NW)

      tab_frame = Frame(self.canvas, width=self.label_width)
      x_0 = len(self.buttons) * self.button_delta + 1
      y_0 = self.top_edge_offset + 2
      tab_rect = self.canvas.create_polygon(x_0, y_0, x_0, 3, x_0 + 1, 2,
                                            x_0 + self.button_width - 2, 2,
                                            x_0 + self.button_width - 1, 3,
                                            x_0 + self.button_width - 1, y_0,
                                            fill=self.button_active_bg, width=1,
                                            outline='black')

      label = label or ' '     # need a nonempty string
      trunc_label = fitted_text(label, text_font, self.button_width - 4)
      tab_label = self.canvas.create_text(x_0 + self.button_width/2,
                                          self.top_edge_offset/2 + 1,
                                          text=trunc_label,
                                          font=text_font, anchor=CENTER)
      this_tag = 'Tab-%s' % this_tab
      self.canvas.addtag_withtag(this_tag, tab_rect)
      self.canvas.addtag_withtag(this_tag, tab_label)
      button_id = this_tag
      
      # Closing a tab destroys its page and button, then raises another
      # to become the current tab.

      def close_tab(*args):
         this_index = self.tab_map[this_tab]    # map to current index
         self.canvas.delete(button_id)
         self.buttons[this_index][5]()          # clean up
         self.canvas.delete(self.buttons[this_index][1])  # remove button/tab
#         self.buttons[this_index][1].destroy()  # remove button
         self.buttons[this_index][2].destroy()  # remove page
         del self.buttons[this_index]
         del self.tab_map[this_tab]
         for i in range(this_index, len(self.buttons)):
            self.canvas.move(self.buttons[i][0], -self.button_delta, 0)
         for (t,i) in self.tab_map.items():
            if i > this_index: self.tab_map[t] = i - 1
         if len(self.buttons) > 0:
            if this_index <  self.current_tab or \
               this_index == self.current_tab == len(self.buttons):
               self.current_tab -= 1
            self.buttons[self.current_tab][3]()      # raise tab
         else:
            self.current_tab = 0
            self.swatch_frame.lower()

      # Selecting a tab causes its page to be raised.  The simulated tab
      # widget raising is done by setting the button's background color
      # and moving the swatch over to cover a portion of the 3D bar.
      
      def raise_tab():
         this_index = self.tab_map[this_tab]    # map to current index
         if self.current_tab != this_index:
             self.canvas.itemconfigure(self.buttons[self.current_tab][1],
                                       fill=self.button_bg)
         self.canvas.itemconfigure(self.buttons[this_index][1],
                                   fill=self.button_selected)
         self.shade.tkraise()   # ensure other pages don't show through
         page.tkraise()
         self.frame_bar.tkraise()
         self.canvas.coords(self.swatch_id,
                            self.swatch_home_x + this_index*self.button_delta,
                            self.swatch_home_y)
         self.swatch_frame.tkraise()
         self.current_tab = this_index

      # Following tuple holds values used to control tab during later events.
      self.buttons.append((button_id, tab_rect, page,
                           raise_tab, close_tab, clean_up))
      raise_tab()
      self.next_tab += 1

   def delete_tabbed_pages(self):
      while self.buttons:
         self.buttons[self.current_tab][4]()    # close procedure

# Find the shortest substring whose rendering in the given font
# will fit within the specified width.

def fitted_text(string, font, width):
   slen = len(string) + 1
   pixlen = 1000000
   while pixlen > width and slen > 1:
      slen -= 1
      pixlen = tkFont.Font(root=root, font=font).measure(string[:slen])
   return string[:slen]


# Create a notebook object and save it for future operations on pages.

def add_notebook_panel(parent):
   global Tabbed_notebook
   avail_height = min(800, 9 * (parent.winfo_screenheight() - 150) / 10)
   Tabbed_notebook = TabbedNotebook(parent, 7, 640, avail_height)
   return Tabbed_notebook

# Given a procedure for creating a page's widget hierarchy,
# assign a new page instance to a new tab.

def add_tabbed_page(make_page, tab_label, clean_up):
   outer = Frame(Tabbed_notebook.canvas, relief=FLAT) # SOLID, bd=1)
   make_page(outer)     # creates and packs gui elements
   Tabbed_notebook.add_new_tab(outer, tab_label, clean_up)
