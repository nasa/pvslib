
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


import codecs
from db_connect import *
from update_queries import *

# After extracting information from PVS, the other side of indexing
# is to insert suitable data into the SQL databases.  This module
# carries out that task with the help of update_queries.py.  Information
# about PVS objects is placed in temporary files by the Lisp-based
# extraction process.  Those files contain Python data structures,
# which are evaluated and acted on here.  See the comments in
# index/extract_pvs_data.lisp for the data formats.


def addLibToDatabase(self, check_pause_cancel):
    """Parse the declarationOutput and referenceOutput files for PVS
    entities and references.
    Add the declarations and references in this object to the database.
    """
    self.logger.debug( 'Inserting libraries %s' % self.library_names )

    pause_msg  = "\nDatabase insertion process is pausing..."
    resume_msg = "...database insertion process is resuming."

    def pause_or_cancel():
        # Check if a cancel or pause request is pending.
        # Following can raise CancelProcess exception and fail to return.
        # Pause cases will not return until a resume command is issued.
        if check_pause_cancel(1, pause_msg, resume_msg) == 'cancel':
            if self.notify:
                print >> self.notify, \
                    '\nIndexing canceled -- terminating database insertion.'
                self.notify.flush()
            try:
                db_conn[self.collec_id].rollback()
                db_conn[self.collec_id].close()
            except:
                pass    # connection wasn't open yet
            self.logger.debug(
                'Insertion canceled -- database connection closed.' )
            raise CancelProcess

# For prelude theories, library theories and generated theories
# (datatype-related), collect the place info from the place files
# created during the PVS extraction phase.  Allows for multiple
# theories within a PVS file.

    def retrieve_library_places(lib_name):
        places = {}
        place_file = os.path.join(self.temp_path,
                                  '%s_places.py' % lib_name)
        for thy, src_file, place in eval(encoded_file_read(place_file)) :
            if src_file not in places:
                places[src_file] = []
            nums = [ int(n) for n in place.strip().strip('#()').split() ]
            places[src_file].append((nums[2], thy))  # save ending line number

        # Create line number ranges for each theory, allowing comments
        # following one theory to become part of next theory's text.
        place_dict = {}
        for source, pairs in places.items():
            prev_num, prev_thy = 0, ''
            pairs.sort()
            for last, thy in pairs:
                if thy != prev_thy:    # ADT theories could be duplicated
                    place_dict[thy] = (source, prev_num + 1, last)
                    prev_num, prev_thy = last, thy
        self.library_places = place_dict

    def create_cached_theories(dir_lib, theories):
        source_dict, path_dict = {}, {}
        for source, first, last in self.library_places.values():
            if source not in source_dict:
                source_path = os.path.join(dir_lib, '%s.pvs' % source)
                source_dict[source] = encoded_file_readlines(source_path)
                path_dict[source]   = source_path
        self.cached_theories, self.theory_paths = {}, {}
        for theory in theories:
            thy_name = theory[0]
            if thy_name not in self.library_places: continue
            # extract theory lines so they can be cached later in database
            source, first, last = self.library_places[thy_name]
            self.theory_paths[thy_name] = path_dict[source]
            thy_lines = source_dict[source][first-1:last]
            skip = 0
            # find first nonblank line
            while len(thy_lines[skip]) <= 1: skip += 1
            self.cached_theories[thy_name] = ''.join(thy_lines[skip:])
            self.library_places[thy_name] = (source, first + skip, last)

    def parse_structures(lib):
        trace = StringIO()
        try:
            self.declarations = eval( encoded_file_read(
                os.path.join(self.temp_path, '%s_decls.py' % lib) ))
            self.references = eval( encoded_file_read(
                os.path.join(self.temp_path, '%s_refs.py' % lib) ))
            self.gen_decls = eval( encoded_file_read(
                os.path.join(self.temp_path, '%s_gens.py' % lib) ))
            retrieve_library_places(lib)
            steps_path = os.path.join(self.temp_path, '%s_steps.py' % lib)
            if os.path.exists(steps_path):
                self.steps = eval( encoded_file_read(steps_path) )
            else:
                self.steps = None
        except SyntaxError:
            print_exc(20, trace)
            self.logger.debug('ERROR parsing PVS output:\n%s' %
                              trace.getvalue())
            raise InsertionError, \
                ("Error parsing PVS extraction output for library '%s'." % lib) \
                + '\nLog file follows:\n' + file( self.pvs_log_file ).read()

    def adjust_location(theory_name, place):
        # for cached theories, subtract theory place offset so
        # declaration places work for separate theory files
        if place.find('#') < 0:
            return place            # some decls lack valid place vectors
        loc = place.strip('#()')
        if theory_name in self.library_places:
            nums = [ int(n) for n in loc.split() ]
            thy_line_num = self.library_places[theory_name][1]
            new = [ nums[0] - thy_line_num + 1, nums[1],
                    nums[2] - thy_line_num + 1, nums[3] ]
            loc = ' '.join(map(str, new))
        return loc

    # Before beginning, first check for pause or cancel commands.

    pause_or_cancel()

    # Open connections to all visible databases.  Only one is needed, but
    # we want to make sure self.collec_id accesses the right one.
    
    open_db_connection()
    cursor = db_cursor[self.collec_id]
    # indexing can use extra pages
    cursor.execute( 'PRAGMA cache_size = 100000' )
    
    lib_count, thy_count, total_thy_count = 0, 0, 0
    step_types = collect_step_types(cursor)    # from previously entered steps

    # cursor.execute( 'BEGIN TRANSACTION' )
    if self.notify:
        print >> self.notify, '\nBeginning database insertion...'
        self.notify.flush()

    # Insert declarations
    for library_name in self.library_names:
        lib_count += 1
        thy_count = 0

        # next parse the files created during PVS extraction
        parse_structures(library_name)
        library = self.declarations
        # (lib_name, [thy_1, ..., thy_n] )
        # thy_i: (thy_name, [decl_1, ..., decl_m])
        self.logger.debug( 'Inserting library %s' % library_name )
        if self.notify:
            print >> self.notify, \
                '\n%s. Inserting data items for library %s...' % \
                (lib_count, library_name)
            self.notify.flush()
        if library_name == 'prelude':
            library_path = pvs_lib_dir
            full_library_path = os.path.join(pvs_lib_dir, 'prelude.pvs')
        else:
            full_library_path = library_path = \
                all_lib_dirs.get(library_name, '')
        lib_theories = library[1][:-1]    # Strip sentinel None
        create_cached_theories(library_path, lib_theories)
                               
        library_id = insert_library( cursor, None,
                                     library_name, full_library_path )
        if self.steps:
            if self.notify:
                print >> self.notify, \
                    '\n%s. Inserting proof rules/steps for library %s...' % \
                    (lib_count, library_name)
                self.notify.flush()
            for step_type, step_list in self.steps:
                for step in step_list:
                    insert_step(cursor, step, step_type,
                                library_id, library_name)
            step_types = collect_step_types(cursor)
                
        for theory in lib_theories:

            theory_name, module_type = theory[0:2]
            pause_or_cancel()          # check for a pause or stop signal
            thy_count += 1
            total_thy_count += 1
            pvs_file_name = self.library_places[theory_name][0]
            rel_theory_path = os.path.join(library_name,
                                           '%s.pvs' % pvs_file_name)
            if re.search('.+_adt.*', theory_name) or \
                    re.search('.+_codt.*', theory_name):
                rel_theory_path = os.path.join('generated', rel_theory_path)
            abs_theory_path = self.theory_paths[theory_name]
            thy_body = self.cached_theories[theory_name]
            addendum = theory[3]
            if self.notify:
                print >> self.notify, '%s.%s Inserting theory %s' % \
                                      (lib_count, thy_count, theory_name)
                self.notify.flush()
            try:
                theory_id = insert_theory(
                                cursor, theory_name, module_type, library_name,
                                library_id, abs_theory_path, rel_theory_path,
                                thy_body, addendum )
            except IOError:
                raise InsertionError, \
                      "The file for theory %s seems to be missing.\n" \
                      "Each theory must be defined in its own file, \n" \
                      "and the filename must match the theory's name." % \
                      theory_name

            theory_item_list = theory[2][:-1] # Strip sentinel None
            proofs_queue = []
            decl_id_dict = {}
            for decl in theory_item_list:
                if decl[0] in proof_types:
                    insert_proof(
                        cursor, decl_id_dict, proofs_queue,
                        decl[2], decl[3], decl[0], decl[1], decl[4],
                        theory_id, theory_name, library_id, library_name,
                        *decl[5:])
                else:
                    location = adjust_location(theory_name, decl[4])
                    insert_declaration(
                        cursor, decl_id_dict, decl[1], decl[0],
                        theory_id, theory_name, library_id, library_name,
                        decl[2], decl[3], location )
            execute_proofs_insertion(cursor, proofs_queue)
            # self.logger.debug( 'Inserted declarations.' )
            if self.notify:
                print >> self.notify, \
                    'insert_counts %s %s' % (lib_count, total_thy_count)
                self.notify.flush()

        self.logger.debug( 'Inserted theories and declarations for %s.' %
                           library_name )
        decl_refs_queue = []
        proof_refs_queue = []
        step_refs_queue = []
        if self.notify:
            print >> self.notify, \
                '%s.  Inserting reference data for library %s...' % \
                (lib_count, library_name)
            self.notify.flush()

        # Insert references
        for ref_entry in self.references[:-1]: #Strip sentinel None
            if ref_entry[0] == 'declarations':
                for referrer, referent in ref_entry[1:]:
                    build_declaration_reference(
                        cursor, self.logger, decl_refs_queue, library_id,
                        referrer, referent )
            elif ref_entry[0] == 'proofs':
                for referrer, referent in ref_entry[1:]:
                    if isinstance(referent, basestring):
                        build_step_references(
                            cursor, self.logger, step_types,
                            step_refs_queue, library_id,
                            referrer, referent )
                    else:
                        build_proof_reference(
                            cursor, self.logger, proof_refs_queue, library_id,
                            referrer, referent )
            else:  # modules or modules_closure
                for referrer, referent in ref_entry[1:]:
                    build_module_reference(
                        cursor, self.logger, library_id,
                        ref_entry[0] != 'modules',
                        referrer, referent)

        execute_refs_insertion(cursor, decl_refs_queue,
                               proof_refs_queue, step_refs_queue)
        if self.notify:
            print >> self.notify, '      ...reference data inserted'
            self.notify.flush()
        self.logger.debug( 'Inserted references for %s.' % library_name )

        insert_generated_decls(cursor, self.logger,
                               self.gen_decls[:-1], library_id)

    updateEntityStats(self.collec_id, cursor)

    pause_or_cancel()          # last chance to act on a cancel signal
                               # might raise CancelProcess
    db_conn[self.collec_id].commit()
    for conn in db_conn:
        conn.close()

    self.logger.debug( 'Database connection closed.' )

    if not check_assertions:   # clean up temp files unless debug mode
        for lib in self.library_names:
            for template in ('%s_decls.py', '%s_refs.py', '%s_gens.py',
                             '%s_places.py', '%s_steps.py'):
                tempfile_path = os.path.join(tmp_dir, template % lib)
                if os.path.exists(tempfile_path):
                    os.remove(tempfile_path)

    return lib_count, total_thy_count


# Utilities to handle files encoded in UTF-8 (or other encoding).

def encoded_file_read(path, enc=('utf-8', 'latin_1')):
    return read_encoded_file(path, lambda f: f.read(), enc)

def encoded_file_readlines(path, enc=('utf-8', 'latin_1')):
    return read_encoded_file(path, lambda f: f.readlines(), enc)

def read_encoded_file(path, read_fn, encodings):
    for enc in encodings:
        ef = codecs.open(path, encoding=enc)
        try:
            contents = read_fn(ef)
            ef.close()
            return contents        
        except (UnicodeDecodeError, IOError):
            ef.close()
    raise IOError
