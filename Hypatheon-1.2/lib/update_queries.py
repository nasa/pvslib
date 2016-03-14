
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# SQL queries needed to add or update table rows are collected here.
# In some cases, data sets for multiple rows are gathered first so an
# execute_many query can be used for better performance.

import os, time

from db_connect import exec_sql

from preference_utilities import user_prefs

verbose_logging = user_prefs.getint('Application', 'verbose_logging')


# /* Inserters */

name_query = exec_sql( "SELECT name_id FROM AllNames WHERE name = %(name)s" )
insert_name_query = exec_sql("INSERT INTO AllNames (name) VALUES ( %(name)s )")
suffix_query = exec_sql( "INSERT INTO SuffixNames "
                         "(suffix, name_id) VALUES ( %(suffix)s, %(name_id)s )" )

def insert_name(cursor, name):
    name = name.lower()
    cursor.execute( name_query, {'name': name} )
    name_id_row = cursor.fetchone()
    if name_id_row:
        return name_id_row[0]
    cursor.execute( insert_name_query, {'name': name} )
    cursor.execute( 'SELECT last_insert_rowid()')
    name_id = cursor.fetchone()[0]

    suffix_args = [ (name[k:], name_id) for k in range(len(name)) ]
    cursor.executemany( suffix_query, suffix_args )
    return name_id

insert_decl_query = exec_sql(
    'INSERT INTO Declarations '
    '(name_id, decl_type, theory_id, theory, library_id, library, '
    'signature, body, location) VALUES '
    '( %(name_id)s, %(decl_type)s, %(theory_id)s, %(theory)s, '
    '  %(library_id)s, %(library)s, %(signature)s, %(exp_body)s, %(location)s )' )

def insert_declaration(cursor, decl_dict, name, decl_type, theory_id, theory,
                       library_id, library, signature, body, location):
    name_id = insert_name(cursor, name)
    exp_body = body.expandtabs()
    cursor.execute( insert_decl_query, locals() )
    cursor.execute( 'SELECT last_insert_rowid()')
    decl_id = cursor.fetchone()[0]
    decl_dict[name] = decl_id

def insert_proof(cursor, decl_dict, proofs_queue,
                 name, decl_name, proof_type, decl_type,
                 signature, theory_id, theory, library_id, library,
                 run_date, run_time, num_steps, status, descrip, script):
    name_id = insert_name(cursor, name)
    decl_name_id = insert_name(cursor, decl_name)
    declaration_id = decl_dict[decl_name]
    proofs_queue.append(locals())

insert_proofs_query = exec_sql(
    'INSERT INTO Proofs '
    '(name_id, proof_type, decl_name_id, decl_type, declaration_id, '
    'signature, theory_id, theory, library_id, library, '
    'run_date, run_time, num_steps, status, description, script) '
    'VALUES '
    '( %(name_id)s, %(proof_type)s, %(decl_name_id)s, %(decl_type)s, '
    '  %(declaration_id)s, %(signature)s, '
    '  %(theory_id)s, %(theory)s,  %(library_id)s, %(library)s, '
    '  %(run_date)s, %(run_time)s, %(num_steps)s, %(status)s, '
    '  %(descrip)s, %(script)s )' )

def execute_proofs_insertion(cursor, proofs_queue):
    cursor.executemany( insert_proofs_query, proofs_queue )


find_file_query = exec_sql(
    "SELECT file_id FROM FileDescriptors "
    "WHERE library_id = %(library_id)s and rel_path = %(rel_path)s" )
insert_file_query = exec_sql(
    'INSERT INTO FileDescriptors '
    '(rel_path, file_type, file_size, mod_time, library_id) '
    'VALUES (%s, %s, %s, %s, %s)' )

def insert_file_descriptor(cursor, library_id, abs_path, rel_path):
    # File at abs_path is assumed to exist; path results from library indexing.
    cursor.execute( find_file_query, locals() )
    file_id_row = cursor.fetchone()
    if file_id_row:
        return file_id_row[0]
    cursor.execute( insert_file_query,
                    (rel_path, 'source/pvs', os.path.getsize(abs_path),
                     os.path.getmtime(abs_path), library_id) )
    cursor.execute( 'SELECT last_insert_rowid()')
    file_id = cursor.fetchone()[0]
    return file_id

insert_theory_query = exec_sql(
    'INSERT INTO Theories '
    '(name, module_path, module_type, library, library_id, file_id) '
    'VALUES ( %(name)s, %(module_path)s, %(module_type)s, '
    '%(library_name)s, %(library_id)s, %(file_id)s )' )
insert_thy_body_query = exec_sql(
    'INSERT INTO TheoryBodies '
    '(theory_id, library_id, theory_lines, addendum_lines, body, addendum) '
    'VALUES ( %(theory_id)s, %(library_id)s, %(theory_lines)s, '
    ' %(addendum_lines)s, %(body)s, %(addendum)s )' )

def insert_theory(cursor, name, module_type, library_name, library_id,
                  abs_path, rel_path, body, addendum):
    file_id = insert_file_descriptor(cursor, library_id, abs_path, rel_path)
    module_path = library_name + '@' + name
    cursor.execute( insert_theory_query, locals() )
    cursor.execute( 'SELECT last_insert_rowid()')
    theory_id = cursor.fetchone()[0]
    theory_lines = body.count('\n')
    if body and body[-1] != '\n': theory_lines += 1
    addendum_lines = addendum.count('\n')
    if addendum and addendum[-1] != '\n': addendum_lines += 1
    cursor.execute( insert_thy_body_query, locals() )
    return theory_id

insert_library_query = exec_sql(
    "INSERT INTO Libraries (name, file_id, index_time) "
    "VALUES ( %(name)s, %(file_id)s, %(index_time)s )" )

def insert_library(cursor, log_fn, name, abs_path):
    # Directory at abs_path is assumed to exist;
    #   it results from indexing the library.
    # first delete any existing library with this name
    delete_library(cursor, name, log_fn)

    # next create a file descriptor row
    cursor.execute( insert_file_query,
                    (name, 'node/direc', 0, os.path.getmtime(abs_path), 0) )
    cursor.execute( "SELECT last_insert_rowid()")
    file_id = cursor.fetchone()[0]

    # insert a new row into the Libraries table
    index_time = int(time.time())
    cursor.execute( insert_library_query, locals() )
    cursor.execute( "SELECT last_insert_rowid()")
    library_id = cursor.fetchone()[0]
    if log_fn:
        log_fn( "Library '%s' has been added to the database." % name )

    # finally, update the file descriptor row to add the library_id
    cursor.execute( exec_sql("UPDATE FileDescriptors SET library_id = %s "
                             "WHERE file_id = %s"),
                    (library_id, file_id) )
    return library_id

insert_step_query = exec_sql(
    "INSERT INTO Steps (name_id, step_type, library_id, library, docstring) "
    "VALUES ( %(name_id)s, %(step_type)s, %(library_id)s, "
    "%(library)s, %(docstring)s )" )

def insert_step(cursor, step, step_type, library_id, library):
    name, docstring = step
    name_id = insert_name(cursor, name)
    cursor.execute( insert_step_query, locals() )

collect_type_query = exec_sql(
    "SELECT name, step_type FROM AllNames A JOIN Steps S "
    "WHERE A.name_id = S.name_id" )

def collect_step_types(cursor):
    cursor.execute( collect_type_query )
    name_types = cursor.fetchall()
    step_types = {}
    for name, type in name_types:
        step_types[name] = type
    return step_types

find_decl_query = exec_sql(
    "SELECT declaration_id from Declarations D JOIN AllNames N "
    "ON (D.name_id = N.name_id) WHERE N.name = %s AND D.theory = %s "
    "AND D.decl_type = %s AND D.library_id = %s" )
insert_gen_decl_query = exec_sql(
    "INSERT INTO GeneratedDeclarations "
    "(declaration_id, decl_type, generated_id, gen_type, library_id) "
    "VALUES (%s, %s, %s, %s, %s)" )

def insert_generated_decls(cursor, logger, gen_decls, lib_id):
    decls, targets = {}, {}
    for d, d_thy, d_type, g, g_thy, g_type in gen_decls:
        if (d, d_thy) not in decls:
            cursor.execute(find_decl_query, (d, d_thy, d_type, lib_id))
            decl_ids = cursor.fetchone()
            if decl_ids:
                decls[(d, d_thy)] = decl_ids[0]
            elif d_type == 'judgement':
                logger.debug('Generating declaration %s:%s not found.\n'
                             % (d_thy, d))
        if (g, g_thy) not in targets:
            cursor.execute(find_decl_query, (g, g_thy, g_type, lib_id))
            target_decls = cursor.fetchone()
            if target_decls:
                targets[(g, g_thy)] = target_decls[0]
            elif d_type == 'judgement':
                logger.debug('Generated declaration %s:%s not found.\n'
                             % (g_thy, g))
        # Missing declarations currently are an issue only for judgements.
    gen_rows = []
    for d, d_thy, d_type, g, g_thy, g_type in gen_decls:
        try:
            d_id = decls[(d, d_thy)]
            g_id = targets[(g, g_thy)]
            gen_rows.append( (d_id, d_type, g_id, g_type, lib_id) )
        except KeyError:
            pass     # missing decls have already been logged
#    gen_rows = [ (decls[(d, d_thy)], d_type,
#                  targets[(g, g_thy)], g_type, lib_id)
#                 for d, d_thy, d_type, g, g_thy, g_type in gen_decls ]
    cursor.executemany( insert_gen_decl_query, gen_rows )


#==============

def make_column_selector(names, *col_names):
    columns = [ names.index(n) for n in col_names ]
    def select_values(row):
        return tuple( [ row[c] for c in columns ] )
    return select_values

decl_columns = ('declaration_id', 'name_id', 'decl_type', 'theory_id',
                'theory', 'library_id', 'library',
                'signature', 'location', 'body')
proof_columns = ('proof_id', 'name_id', 'proof_type', 'decl_name_id',
                 'decl_type', 'declaration_id',
                 'library_id', 'library', 'theory_id', 'theory',
                 'signature', 'run_date', 'run_time', 'num_steps',
                 'status', 'description', 'script')

decl_col_selector = \
    make_column_selector(decl_columns,
                         'declaration_id', 'name_id', 'decl_type',
                         'theory_id', 'theory', 'library_id', 'library',
                         'signature' )
proof_col_selector = \
    make_column_selector(proof_columns,
                         'proof_id', 'name_id', 'proof_type', 'decl_name_id', 
                         'decl_type', 'declaration_id', 'signature', 
                         'theory_id', 'theory', 'library_id', 'library' )


# /* Build Declaration References */

decl_info_query = exec_sql(
    'SELECT * FROM Declarations WHERE '
    'name_id = %(name_id)s AND theory = %(theory)s AND '
    'library = %(library)s AND signature = %(signature)s' )

def build_declaration_reference(cursor, logger, refs_queue, library_id,
                                referrer, referent):
    library, theory, name, decl_type, signature = referrer
    ref_library, ref_theory, ref_name, ref_type, ref_signature = referent
    name_id = insert_name(cursor, name)
    ref_name_id = insert_name(cursor, ref_name)

    # For referrer and referent items, look up additional items for
    # each set in Declarations table, then insert a composite row
    # into DeclarationReferences.

    d_cols = name, theory, library, signature
    cursor.execute( decl_info_query, locals() )
    di_row_d = cursor.fetchone()
    if not di_row_d:
        # Reference can be missing because referent library hasn't been indexed,
        # which is perfectly normal.
        if verbose_logging:
            logger.debug('Declaration %s:%s:%s not found.\n'
                         '\tsignature: [%s]' % d_cols)
        return

    items = decl_col_selector( di_row_d ) + \
            ( ref_name_id, ref_type, ref_theory, ref_library, ref_signature )
    refs_queue.append(items)


# Proof references are similar to declaration references.

proof_info_query = exec_sql(
    'SELECT * FROM Proofs WHERE '
    'decl_name_id = %(decl_name_id)s AND theory = %(theory)s AND '
    'library = %(library)s AND signature = %(signature)s' )

def build_proof_reference(cursor, logger, refs_queue, library_id,
                          referrer, referent):
    library, theory, name, proof_type, \
        decl_name, decl_type, signature = referrer
    ref_library, ref_theory, ref_name, ref_type, ref_signature = referent
    name_id = insert_name(cursor, name)
    decl_name_id = insert_name(cursor, decl_name)
    ref_name_id = insert_name(cursor, ref_name)

    # For referrer and referent items, look up additional items for
    # each set in Proofs table, then insert a composite row
    # into ProofReferences.

    d_cols = decl_name_id, theory, library, signature
    cursor.execute( proof_info_query, locals() )
    di_row_d = cursor.fetchone()
    if  not di_row_d:
        if verbose_logging:
            logger.debug('Declaration %s:%s:%s not found.\n'
                         '\tsignature: [%s]' % d_cols)
        return
            
    items = proof_col_selector( di_row_d ) + \
            ( ref_name_id, ref_type, ref_theory, ref_library, ref_signature )
    refs_queue.append(items)


# Proof step references are similar to proof references.

def build_step_references(cursor, logger, step_types, refs_queue, library_id,
                          referrer, ref_steps):
    library, theory, name, proof_type, \
        decl_name, decl_type, signature = referrer
    name_id = insert_name(cursor, name)
    decl_name_id = insert_name(cursor, decl_name)

    # For referrer and referent items, look up additional items for
    # each set in Proofs table, then insert a composite row
    # into ProofStepReferences.

    d_cols = decl_name_id, theory, library, signature
    cursor.execute( proof_info_query, locals() )
    di_row_d = cursor.fetchone()
    if not di_row_d:
        if verbose_logging:
            logger.debug('Declaration %s:%s:%s not found.\n'
                         '\tsignature: [%s]' % d_cols)
        return
    common_items = proof_col_selector( di_row_d )

    # Step names can occur multiple times in proofs.  We work through the
    # list, counting occurrences, removing duplicates, and arriving at a
    # list of names and their counts.
    step_names = ref_steps[1:-1].split()    # strip outer parens
    steps_counts = {}
    step_name_ids = [ (insert_name(cursor, sname), sname) for sname in step_names ]
    step_name_ids.sort()
    ordered_step_names = []
    for id, sname in step_name_ids:
        if id in steps_counts:
            steps_counts[id] += 1
        else:
            steps_counts[id] = 1
            ordered_step_names.append(sname)
    # Step names are now in name_id order.  Collect triples of
    # (name_id, ref_type, ref_count) and queue them for table insertion.
    for sname, name_id_count in zip(ordered_step_names,
                                    sorted(steps_counts.items())):
        ref_name_id, ref_count = name_id_count
        items = common_items + \
                ( ref_name_id, step_types.get(sname, ''), ref_count )
        refs_queue.append(items)


# Create an SQL query for inserting a list of column values.

def make_insert_query(table, column_names):
    template = 'INSERT INTO %s(%s) VALUES (%s) '
    names = column_names.split()
    query = template % (table, ', '.join(names), ', '.join(['%s'] * len(names)))
    return exec_sql(query)

decl_refs_query = \
    make_insert_query('DeclarationReferences',
                      'declaration_id name_id decl_type theory_id theory '
                      'library_id library signature ref_name_id ref_type '
                      'ref_theory ref_library ref_signature' )

proof_refs_query = \
    make_insert_query('ProofReferences',
                      'proof_id name_id proof_type decl_name_id decl_type '
                      'declaration_id signature theory_id theory '
                      'library_id library ref_name_id ref_type ref_theory '
                      'ref_library ref_signature' )

proof_step_refs_query = \
    make_insert_query('ProofStepReferences',
                      'proof_id name_id proof_type decl_name_id decl_type '
                      'declaration_id signature theory_id theory '
                      'library_id library ref_name_id ref_type ref_count' )

def execute_refs_insertion(cursor, decl_refs_queue,
                           proof_refs_queue, step_refs_queue):
    cursor.executemany(decl_refs_query, decl_refs_queue)
    cursor.executemany(proof_refs_query, proof_refs_queue)
    cursor.executemany(proof_step_refs_query, step_refs_queue)


# Insert module references (importings) in either direct or closure form.

mod_refs_query = \
    make_insert_query('TheoryReferences',
                      'name library module_type '
                      'ref_theory ref_library ref_type' )

mod_refs_closure_query = \
    make_insert_query('TheoryReferencesClosure',
                      'name library module_type '
                      'ref_theory ref_library ref_type' )

def build_module_reference(cursor, logger, library_id, is_closure,
                           referrer, referent):
    library, theory, module_type = referrer
    ref_library, ref_theory, ref_type = referent
    if is_closure: query = mod_refs_closure_query
    else:          query = mod_refs_query
    items = ( theory, library, module_type, ref_theory, ref_library, ref_type, )
    cursor.execute( query, items )
    
#=================

# /* Deleters */

# Since SQLite doesn't support cascading deletion through foreign key
# constraints by default, library deletion requires that all relevant
# tables need to be queried to identify all rows that should be purged.

def delete_library(cursor, library_name, log_fn=None):
    lib_id_dict = {'name': library_name}
    cursor.execute(
        exec_sql( "SELECT library_id FROM Libraries "
                  "WHERE name = %(name)s" ),
        lib_id_dict )
    lib_id_result = cursor.fetchone()

    if not lib_id_result: return   # library doesn't exist (not an error)

    lib_id_dict['library_id'] = lib_id_result[0]

    for table in ('Declarations', 'DeclarationReferences', 
                  'FileDescriptors', 'GeneratedDeclarations',
                  'Proofs', 'ProofReferences', 'ProofStepReferences',
                  'TheoryReferences', 'TheoryReferencesClosure',
                  'Steps', 'TheoryBodies', 'Theories', 'Libraries') :
        cursor.execute(
            exec_sql( "DELETE FROM %s WHERE " % table +
                      "library_id = %(library_id)s" ),
            lib_id_dict )

    # Tables AllNames and SuffixNames will not be pruned during library
    # deletion.  Thus, they can accumulate orphaned names and suffixes.
    # Since the deleted libraries will most likely be re-indexed, this
    # accumulation is not expected to be a problem.

    if log_fn:
        log_fn("Library '%s' has been deleted from the database." % library_name)

#==============
