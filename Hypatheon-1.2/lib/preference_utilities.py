
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Load and parse user preferences.

from app_globals import *

_current_config = None


_default_options_ = {
    'command_timeout':          10 ,
    'verbose_logging':           0 ,
    'base_font_size':            0 ,
    'content_view_size':        20 ,
    'show_decl_lines':           2 ,
    'upper_pane_fraction':     0.5 ,
    'mouse_over_delay':        1.0 ,
    'shell_cmd_timeout':        15 ,
    'excluded_libraries':     '[]' ,
    'command_shell':        'bash' ,
    'version_script':           '' ,
    'user_name':            'Anonymous User' ,
    'user_email':           'anonymous@localhost' ,
    'prefs_version':        app_version ,
}


# Parse current user preferences.  When Client is run, it first will
# check for and make any necessary version updates.

def get_user_prefs(user_prefs_file):
    global _current_config
    if _current_config: return _current_config
    user_config = ConfigParserCommentless(_default_options_)
    user_config.read([user_prefs_file])
    _current_config = user_config
    return user_config


# This dictionary can be used throughout the application to look up
# current preference values.

user_prefs = get_user_prefs(os.path.join(config_dir, 'preferences.conf'))
