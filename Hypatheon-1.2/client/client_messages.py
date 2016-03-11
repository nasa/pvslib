
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


display_messages = \
    {
     'edit_prefs' :
     "Edit the preference values below, then select the Save button.  " 
     "New preferences will take effect the next time you " 
     "start Hypatheon.  Select Restore Defaults if you need to " 
     "recover the original values, then select Save." ,
     
     'internal_error' :
     "Unfortunately, an internal error has been detected. " 
     "If you would be kind enough to report the problem, " 
     "the developers can provide corrections in a future version. " 
     "If this event is followed by unusual behavior, "
     "it would be wise to " 
     "restart Hypatheon before proceeding with your work. " 
     "Sorry for any inconvenience." ,

     'problem_reporting' :
     "Problem reporting procedure: \n"
     "\n    - Contact Ben Di Vito (b.divito@nasa.gov).\n"
     "\n    - Provide a description of the events preceding the mishap.\n "
     "\n    - If relevant, also send this auto-generated error report file: " ,

     'reporting_thanks' :
     "Thank you very much for taking the time to report this problem." ,

     'index_libraries' :
     "Hypatheon can index any of the PVS libraries listed below. "
     "Select them individually or in sets using the buttons provided. "
     "'New' selects libraries not yet indexed "
     "in the database, while 'Indexed' selects the opposite (shown in blue). "
     "After library selection, you may begin a background "
     "indexing job, which reports its progress in a separate window. "
     "For moderate to large selections, this operation can take "
     "many minutes to complete." ,

     'lib_convention_reminder' :
     "Reminder:  Please be sure your libraries adhere to the conventions "
     "described in Help item PVS Library Conventions.",

     'library_selection_note' :
     "Note: Libraries shown in red have been indexed already "
     "in another database. Those shown in orange are found on the "
     "exclude list (preference setting); "
     "these must be selected explicitly to be indexed.",

     'index_grouping' :
     "Hypatheon can index a sequence of PVS libraries listed in a suitable "
     "manifest file (names having the form *.all), provided all libraries "
     "are located in the same directory. Library names are extracted as "
     "the first identifier found on each line beginning with an alphabetic "
     "character. Indexing will be conducted in the manifest-listed order. "
     "After manifest file selection, you may begin a background "
     "indexing job, which reports its progress in a separate window. "
     "For moderate to large selections, this operation can take "
     "many minutes to complete." ,

     'indexing_in_progress' :
     "An indexing process for the selected libraries has been launched "
     "and will run in the background until completed. "
     "Progress will be reported below, updated every second." ,

     'schedule_indexing' :
     "Periodic (re)indexing can be performed in batch mode using the "
     "'cron' service. If you would like to update your index regularly "
     "(e.g., nightly), simply add a scheduling entry to your cron table, "
     "which typically can be done using a command such as 'crontab -e'."
     "\n\n"
     "A candidate crontab entry was generated from your library selection. "
     "The generated entry shown below will cause "
     "cron to run the indexer daily at 3:15 AM. "
     "Copy the table entry to the "
     "clipboard using the Copy button below, then paste it into "
     "your crontab using a text editor. If desired, edit further "
     "to modify the schedule or library list. " ,

     'indexing_command' :
     "Alternatively, you may copy only the command portion of the "
     "crontab entry above for use directly on the command line." ,

     'crontab_added' :
     "A crontab entry has been created. You should check it by issuing "
     "the shell command 'crontab -l'. You may edit this entry anytime "
     "using the command 'crontab -e' to change the schedule or to add "
     "or subtract profiles." ,

     'delete_libraries' :
     "To delete any of the previously indexed PVS libraries, "
     "select from those listed below. Data in the remaining libraries "
     "will not be impacted. This process should take "
     "only a few seconds." ,

     'vacuum_database' :
     "You can choose to 'vacuum' the relevant databases after the libraries "
     "have been deleted. This action will reclaim free space and compact the "
     "database files, requiring some additional time to complete." ,

     'lib_deps_refresh' :
     "When the Display button is selected, "
     "the library dependency file will be "
     "displayed in a separate window, provided it exists. "
     "The report can be created or refreshed by selecting the Refresh button, "
     "which might require a few seconds to scan all of the PVS files." ,

     'clear_database' :
     "Clearing a database will remove all of its stored "
     "information on PVS libraries, although the database itself will remain. "
     "Deleting a database will destroy the library information as well as "
     "the database file. "
     "Before invoking these actions, make sure the database file "
     "is not needed by another client instance "
     "or an active indexing process." ,

     'delete_superseded' :
     "Database files for the following collection names and version strings "
     "are older than the currently active database files:" ,

     'create_database' :
     "Creating a database will add a new database file whose name "
     "is derived from the collection name entered below. Collection names "
     "must be alphanumeric strings "
     "(no embedded blanks or punctuation characters). "
     "An optional version number or string may be given. " ,

     'create_database_copy' :
     "\n"
     "The new database file can be created empty or copied from one of the "
     "existing databases listed above. Copying is a useful approach when "
     "adding to a fixed set of libraries, such as the PVS core "
     "{prelude, bitvectors, finite_sets}. " ,

     'create_database_empty' :
     "The new database file will be created empty. " ,

     'invoke_shell_command_file' :
     "Enter a command string below. Include '%s' wherever you want the path "
     "name to be inserted.  Omitting %s causes the file contents to be "
     "piped to the command. " ,

     'invoke_shell_command_direc' :
     "Enter a command string below. It will be preceded by a 'cd' "
     "to the target directory. "
     "You may then use '.' to refer to the directory. " ,

     'invoke_shell_command_paths' :
     "Enter a command string below. Include '%s' wherever you want the list "
     "of path names to be inserted. " ,

     'edit_path_list' :
     "Select path names from either list to move to the other. Both "
     "lists will be saved so hidden paths can be retrieved later." ,
     
     'explain_terminal' :
     "If menu item Open Terminal Window on Paths is selected, "
     "the new terminal will be passed a list of path names as "
     "shell parameters.  This means they will be available as "
     "positional parameters $1, $2, etc., or through the special "
     "parameter '$*'.  Shell commands such as 'ls -l $*' should be "
     "expanded accordingly."
     "\n\n"
     "If any path name contains the space character, the shell "
     "will likely parse the path as two or more words.  If this happens, "
     "using the 'eval' command should correct the problem.  For "
     "example, enter the command as 'eval ls -l $*'. " ,

     'invoke_prover_command_custom' :
     'Edit the prover command string below to create the desired command. '
     'Include "%s" wherever you want the name above to be inserted. Omit '
     'double quotes if not needed for the intended prover command.' ,

     'invoke_prover_command_full' :
     'Edit the name string above to include theory parameters, if needed, '
     'or remove the [--] characters. '
     'Edit the prover command string below to create the desired command. '
     'Include "%s" wherever you want the name above to be inserted. Omit '
     'double quotes if not needed for the intended prover command.' ,

     ### Following not yet implemented
     # 'wait_for_import' :
     # ('Adding IMPORTING statement',
     #  "The theory you requested is not currently on the import chain.  Please "
     #  "wait while Hypatheon inserts an IMPORTING statement into your .pvs "
     #  "file.  PVS will be taking commands "
     #  "from Hypatheon Client during this process.  "
     #  "User input can interfere, so please wait "
     #  "for the client to notify you when it is safe to resume the proof.") ,
     
     }


dialog_messages = \
    {
     'confirm_carry_over_plus_db' :
     ('Hypatheon Start-up',
      "Current version %s of Hypatheon is new. "
      "Previous version %s was also detected. "
      "Would you like to carry over files for the previous databases "
      "and preferences?" ) ,

     'confirm_carry_over_no_db' :
     ('Hypatheon Start-up',
      "Current version %s of Hypatheon is new. "
      "Previous version %s was also detected. "
      "Hypatheon's database schema has changed since that version, "
      "so previous database files cannot be carried over. "
      "You will need to recreate any private databases and re-index "
      "the relevant libraries. "
      "Would you like to carry over the previous preferences? "
      "" ) ,

     'confirm_indexing_cancel' :
     ('Indexing files',
      "Cancellation will terminate the indexing process currently underway "
      "and abort the remainder of the indexing job. "
      "Do you wish to proceed with cancellation?" ) ,

     'confirm_db_removal' :
     ('Database removal',
      "You have asked to remove all information in library collection '%s'. "
      "Be sure this is what you intend before proceeding. "
      "This operation cannot be undone.  You will need to reindex "
      "the libraries to recreate this data.") ,   ## % collec_name

     'confirm_ss_removal' :
     ('Database removal',
      "You have asked to delete %s superseded database files. "
      "Be sure this is what you intend before proceeding. "
      "This operation cannot be undone.") ,   ## % num_files

     'ask_restart_client' :
     ('Restart client process',
      "Restarting the Hypatheon Client process will destroy the current "
      "process instance along with most query information displayed in the "
      "client's window.  A new client process will be started in its place, "
      "then the latest query will be rerun. "
      "Nothing else associated with the PVS Emacs instance will be changed "
      "by this action.") ,

    }


error_messages = \
    {
     'db_server_down' :
     ('Hypatheon Client start-up',
      "A connection to the Hypatheon database server was not established. "
      "Try starting Hypatheon Client again." ) ,

     'missing_font_family' :
     ('Hypatheon Client start-up',
      "None of the font families from the group %s could be found. "
      "There might be something wrong with your "
      "Tk installation. ") ,    ## % family_list

     'bad_preferences' :
     ('Hypatheon Client preferences',
      "While reading the preferences file, an error was detected " 
      "for preference value '%s'.  " 
      "Select 'Preferences' from the Edit menu to correct " 
      "the problem.  In the meantime, "
      "a default value will be used.") ,     ## % preference_load_error

     'carry_over_prefs_conflict' :
     ('Preference carry-over conflict',
      "While attemtping to carry over the user-preferences file from "
      "the previous version, a conflict was detected. This means "
      "that a value you had previously changed was also changed in "
      "the new preferences file. You will need to reenter your "
      "preference settings using the Edit menu."),

     'lib_deletion_error' :
     ('Library deletion',
      "An error was encountered while deleting the selected libraries. "
      "View the Indexing Error Log or see file "
      "<hypatheon>/log/index_err_log for details.") ,
     }


warning_messages = \
    {
     'not_in_checker' :
     ('Submit prover command',
      "No proof is currently in progress.") ,

     'database_error' :
     ('Database access',
      "An error occurred while accessing the database. "
      "This could be benign, possibly caused by a temporary database lock. "
      "Try again and see if it clears up. "
      "If the error recurs, it is probably due to a bug "
      "and should be reported.") ,
     }
