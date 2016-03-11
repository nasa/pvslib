
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Check if this is the first run of a new version.  If so and a previous
# version exists, ask the user if he would like to carry over previous
# files (database, preferences).  Write a file 'prev-version' with the
# previous version number.

from app_globals       import *

prev_vers_file = os.path.join(config_dir, 'prev-version')

if not os.path.exists(prev_vers_file):

    from Tkinter import *
    from tkMessageBox import showinfo, showerror, askquestion
    from client_messages import *

    prefix = os.path.normpath(os.path.join(hypatheon_dir, '..', 'Hypatheon-'))
    hyp_dirs = glob.glob(prefix + '*')
    vers_dirs = [ (d.replace(prefix, ''), d)
                  for d in hyp_dirs if os.path.isdir(d) ]
    vers_dirs.sort()
    # Note: version number components need to be single digits
    found_prev = 0

    try:
        for cur_index in range(len(vers_dirs)):
            if vers_dirs[cur_index][0] == app_version: break
        else:     #  (shouldn't happen)
            raise ValueError, 'Directory for current version is missing.'
        if cur_index > 0:
            prev_vers, prev_dir = vers_dirs[cur_index - 1]
            found_prev = 1
        else:
            prev_vers = '0.0'                      # no previous version
    except ValueError:
        prev_vers = 'x.y'   # current version not found -> anomalous

    def copy_over_files(subdir, names):
        to_dir = os.path.join(hypatheon_dir, subdir)
        if isinstance(names, basestring):
            from_paths = glob.glob(os.path.join(prev_dir, subdir, names))
        else:
            from_paths = [ os.path.join(prev_dir, subdir, n) for n in names ]
        for from_path in from_paths:
            if not os.path.exists(os.path.join(to_dir,
                                               os.path.basename(from_path))):
                shutil.copy2(from_path, to_dir)

    if found_prev:
        carry = Tk()        # start Tk (but not event loop)
        carry.withdraw()
        if version_tuple(prev_vers) < db_schema_change[-1]:
            # schema changed => can't use previous DB files
            title, message = dialog_messages['confirm_carry_over_no_db']
        else:
            title, message = dialog_messages['confirm_carry_over_plus_db']
        # copy user data from previous version; some of these actions should
        # be separately conditioned, e.g., database file shouldn't be copied
        # if schema has changed.
        if askquestion(title, message % (app_version, prev_vers)) == 'yes':
            prev_orig  = os.path.join(prev_dir, 'config', 'orig_prefs.conf')
            prev_prefs = os.path.join(prev_dir, 'config', 'preferences.conf')
            cur_orig  = os.path.join(config_dir, 'orig_prefs.conf')
            cur_prefs = os.path.join(config_dir, 'preferences.conf')
            # use 'merge' command to update new preferences file
            # with user's preferences, after accounting for new preferences
            # introduced by the version change
            shutil.copy(cur_orig, cur_prefs)
#            shell = os.popen('bash', 'w')
#            print >> shell, 'merge %s %s %s' % (cur_prefs, prev_orig, prev_prefs)
#            exit_code = shell.close()
            exit_code = subprocess.call('merge -q "%s" "%s" "%s"' %
                                        (cur_prefs, prev_orig, prev_prefs),
                                        shell=True)
#            exit_code = subprocess.call(['merge', '-q',
#                                         cur_prefs, prev_orig, prev_prefs])
            if exit_code:
                # nonzero exit code means merge command found a conflict
                # user will need to reestablish his preferences
                showerror(*error_messages['carry_over_prefs_conflict'])
                shutil.copy(cur_orig, cur_prefs)

            if version_tuple(prev_vers) < db_schema_change[-1]:
                create_empty_db()
            else:
                copy_over_files('data',  db_glob_pattern)
                copy_over_files('data/base',  db_glob_pattern)
                copy_over_files('data/base', 'empty.sdb')   ### remove?
        carry.destroy()

   # create file to record initialization of new version
    carry_file = open(prev_vers_file, 'w')
    print >> carry_file, prev_vers
    carry_file.close()

# Make sure we have at least an empty database.

if not os.path.exists(empty_db_path):
    create_empty_db()
