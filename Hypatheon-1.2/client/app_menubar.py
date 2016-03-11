
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


from client_globals import *

# Menubar items are specified as a sequence of menus, each of which has
# the form [name, underline, choice1, ..., choiceN].  Each menu choice has
# the form (label, cmd, underline, optional ctrl char).
# A choice of None indicates a separator.

def add_menubar(master, app, menubar, menus, states):   #
    def make_menu(state, name, underline, *choices):
        menu = Menu(menubar, tearoff=0)
        menubar.add_cascade(label=name, menu=menu, underline=underline)

        for ch in choices:
            if ch:   # ch = (label, cmd, underline, optional ctrl char)
                label = ch[0]+'    '
                wrapped_cmd = EventHandler('Menubar %s' % ch[0], ch[1])
                if len(ch) == 3:
                    menu.add_command(label=label, command=wrapped_cmd,
                                     underline=ch[2], state=state)
                else:
                    app.master.bind('<Control-%s>'%ch[3],
                                    lambda event,cmd=wrapped_cmd: cmd())
                    if on_osx:
                        app.master.bind(
                            '<Command-%s>'%ch[3],
                            lambda event,cmd=wrapped_cmd: cmd())
                        accel = 'Command-%s' % string.upper(ch[3])
                    else:
                        accel = 'Ctrl-%s' % string.upper(ch[3])
                    menu.add_command(label=label, command=wrapped_cmd,
                                     underline=ch[2], accelerator=accel,
                                     state=state)
            else:    # ch = None
                menu.add_separator()
        app_state['menubar_menus'].append(menu)

    for items, state in zip(menus, states):
        make_menu(state, *items)

# Create the top-level application menubar widgets.  Accommodate both
# OS X and Linux/Windows conventions.  Preferences and About items are
# handled separately.  Each argument is a tuple accepted by add_menubar:
# (menu item label, command proc, underline).
# Menus descriptor is a list with an entry for each app menu item.
# The value for each item is a list of tuples as accepted by add_menubar.

def make_app_menubar(master, app, menus, states, preferences, about):
    mbar = Menu(master, relief=FLAT)
    master.config(menu=mbar)
    if on_cocoa:
        # Procedure names for About and Preferences are fixed.
        ### Need to find out how to set app name and About label.
	master.bind('<Command-,>', lambda ev, prefs=preferences[1] : prefs())
        master.createcommand('tkAboutDialog', about[1])
        master.createcommand('::tk::mac::ShowPreferences', preferences[1])
    elif on_osx:
    # if on_osx:
	# following option is to accommodate the OS X / Aqua menubar style
	mbar_id = master['menu']
	apple_id = mbar_id + '.apple'
	master.tk.call('menu', apple_id, '-tearoff', '0')
	master.tk.call(apple_id, 'add', 'command',
		       '-label', about[0],
		       '-command', master.register(about[1]))
        master.tk.call(apple_id, 'add', 'separator')

        pref_proc = master.register(preferences[1])
        if map(int, root.tk.eval('info patchlevel').split('.')) < [8,4,14]:
            master.tk.call(apple_id, 'add', 'command',
                           '-label', preferences[0],
                           '-accelerator', 'Command-,',
                           '-command', pref_proc)
            master.tk.call(apple_id, 'add', 'separator')
            master.bind('<Command-,>',
                        lambda ev, prefs=preferences[1] : prefs())
        else:
            # Since version 8.4.14, TkAqua hard codes the preference menu
            # item name.  Must insert Tcl code to call the Python function.
            master.tk.eval('proc ::tk::mac::ShowPreferences {} {%s}'
                           % pref_proc)
        
	master.bind('<Command-,>', lambda ev, prefs=preferences[1] : prefs())
	master.tk.call(mbar_id, 'add', 'cascade', '-label', 'Apple',
		       '-menu', apple_id)
    else:
        for item in menus:
            if item[0] == 'Edit': item.append(preferences)
            if item[0] == 'Help': item.append(about)
    app_state['menubar'] = mbar
    app_state['menubar_menus'] = []
    add_menubar(master, app, mbar, menus, states)
