
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Database client interface operations of various kinds are included here.
# Also used by indexing functions.

from time              import asctime, localtime
from db_connect        import *
from update_queries    import delete_library


#-----------------

def getIndexedSizeModTime(collec_id, path):
    db_attribs = query_some("select file_size, mod_time from FileDescriptors "
                            "where rel_path = %(path)s",
                            collec_id, path=path)
    if db_attribs: return db_attribs[0][0:2]
    else:          return (0, 0)    ### could try more meaningful values

# We assume the following is called from a separate process that
# terminates after library removal is complete.

def removeLibsFromDatabase(collec_id, lib_names, vacuum=0):
    # Open connections to all visible databases.  Only one is needed, but
    # we want to make sure collec_id accesses the right one.
    open_db_connection()
    cursor = db_cursor[collec_id]
    for lib_name in lib_names:
        delete_library(cursor, lib_name)
    emit_log_entry(ops_log_file,
                   "Libraries '%s' were deleted from the database."
                   % ', '.join(lib_names))
    if vacuum:
        query_some_effect("vacuum", collec_id)
        emit_log_entry(ops_log_file, "Database was vacuumed.")

    updateEntityStats(collec_id, cursor)
    db_conn[collec_id].commit()
    for conn in db_conn:
        conn.close()
    return len(lib_names)

#-----------------

# Retrieve file or directory contents if given an absolute path.
# Otherwise, file is virtual and content is retrieved from the database.
# Return ...

def get_full_content_plus(path, collec_id, is_lib, thy_name):
    # abs path expansion should already have occurred
    if is_lib:
        lib_name = os.path.basename(path)   # for abs path
    else:
        path_type, lib_name, thy_file = parse_theory_path(path)
        lib_name = os.path.basename(lib_name)   # for abs path

    # assume relative paths for prelude and generated theories
    lib_ids = query_some("select library_id from libraries "
                         "where name = %(lib_name)s", collec_id,
                         lib_name=lib_name)
    if not lib_ids:
        return ('***** Text for prelude library/theory is missing. *****',
                '', 1, 0)

    lib_id = lib_ids[0][0]
    thy_fetch_query = "select body, addendum, theory_lines, addendum_lines " \
                      "from TheoryBodies B join Theories T " \
                      "on (B.theory_id = T.theory_id) where " \
                      "name = %(name)s and B.library_id = %(lib_id)s"
    if is_lib and lib_name == 'prelude':          # path form: prelude
        # Retrieve the prelude-file intro preceding the copyright notice.
        # Assumes that it's found in the first few lines of prelude.pvs,
        # the initial comments of which are cached in theory 'booleans',
        # which is the first theory listed in the prelude.
        body_parts = query_some(thy_fetch_query, collec_id,
                                name='booleans', lib_id=lib_id)[0][:4]
        intro = body_parts[0]
        contents = intro[:intro.find('% ----')], '', body_parts[2], 0
    elif is_lib:             # path form: library
        contents = query_some(thy_fetch_query, collec_id,
                              name='top', lib_id=lib_id)[0][:4]
    elif thy_file:    # path form: lib/thy.pvs or generated/lib/thy.pvs
        contents = query_some(thy_fetch_query, collec_id,
                              name=thy_name, lib_id=lib_id)[0][:4]
    else:
        contents = '', '', 0, 0    # shouldn't happen
    return contents


# Get the name of a declaration known to be in the database.

def get_declaration_name(collec_id, decl_id):
    query = "SELECT name FROM AllNames N " \
            "JOIN Declarations D ON (D.name_id = N.name_id) " \
            "WHERE declaration_id = %(decl_id)s"
    attribs = query_some(query, collec_id, decl_id=decl_id)
    return attribs[0][0]

# Get declaration name, theory name, library name, decl location, decl body.
# Assumes decl_id is in rt[4] and collec_id is in rt[-1].

def get_declaration_attributes(result_tuple):
    decl_id = result_tuple[4]
    ### could get thy, lib name from result tuple
    query = "SELECT N.name, T.name, T.library, D.declaration_id, " \
            "D.location, D.body, D.decl_type FROM AllNames N " \
            "JOIN Declarations D ON (D.name_id = N.name_id) " \
            "JOIN Theories T ON (D.theory_id = T.theory_id) " \
            "WHERE D.declaration_id = %(decl_id)s"
    attribs = query_some(query, result_tuple[-1], **locals())
    return attribs[0]

def get_declaration_type(collec_id, decl_id):
    query = "SELECT D.decl_type FROM Declarations D " \
            "WHERE D.declaration_id = %(decl_id)s"
    attribs = query_some(query, collec_id, decl_id=decl_id)
    return attribs[0]

def get_declaration_body(collec_id, decl_id):
    query = "SELECT D.body FROM Declarations D " \
            "WHERE D.declaration_id = %(decl_id)s"
    attribs = query_some(query, collec_id, decl_id=decl_id)
    return attribs[0]

def get_decl_attr_for_proof(collec_id, decl_id):
    query = "SELECT D.location, D.body FROM Declarations D " \
            "WHERE D.declaration_id = %(decl_id)s"
    attribs = query_some(query, collec_id, decl_id=decl_id)
    return attribs[0]

# For all declarations referenced from a given decl_id, get name, type,
# theory and library.

def get_decl_references(collec_id, decl_id):
    query = "SELECT N.name, R.ref_type, R.ref_theory, R.ref_library " \
            "FROM AllNames N " \
            "JOIN DeclarationReferences R ON (R.ref_name_id = N.name_id) " \
            "WHERE R.declaration_id = %(decl_id)s"
    refs = query_some(query, collec_id, decl_id=decl_id)
    return [ r[:-1] for r in refs ]

# Get the name of a proof known to be in the database.

def get_proof_name(collec_id, proof_id):
    query = "SELECT name FROM AllNames N " \
            "JOIN Proofs P ON (P.name_id = N.name_id) " \
            "WHERE proof_id = %(proof_id)s"
    attribs = query_some(query, collec_id, proof_id=proof_id)
    return attribs[0][0]

# For all declarations referenced from a given proof_id, get name, type,
# theory and library.

def get_proof_references(collec_id, proof_id):
    query = "SELECT N.name, R.ref_type, R.ref_theory, R.ref_library " \
            "FROM AllNames N " \
            "JOIN ProofReferences R ON (R.ref_name_id = N.name_id) " \
            "WHERE R.declaration_id = %(proof_id)s"
    refs = query_some(query, collec_id, proof_id=proof_id)
    return [ r[:-1] for r in refs ]

# For proofs, get proof name, theory name, library name, decl_id, decl name.
# Assumes decl_id is in rt[4] and collec_id is in rt[-1].

def get_proof_attributes(result_tuple):
    proof_id = result_tuple[4]
    query = "SELECT N1.name, T.name, T.library, P.declaration_id, N2.name, " \
            "D.body, D.location FROM Proofs P " \
            "JOIN AllNames N1 ON (P.decl_name_id = N1.name_id) " \
            "JOIN AllNames N2 ON (P.name_id = N2.name_id) " \
            "JOIN Declarations D ON (D.declaration_id = P.declaration_id) " \
            "JOIN Theories T ON (P.theory_id = T.theory_id) " \
            "WHERE P.proof_id = %(proof_id)s"
    attribs = query_some(query, result_tuple[-1], **locals())
    return attribs[0]

# Given a decl id, get attributes of the decl's proof:
# proof name, type, run date, run time, number of steps,
# status, description, proof script.

def get_decl_proof_attributes(collec_id, decl_id):
    query = "SELECT N.name, P.proof_type, P.run_date, P.run_time, " \
            "P.num_steps, P.status, P.description, P.script " \
            "FROM Proofs P JOIN AllNames N ON (P.name_id = N.name_id) " \
            "WHERE P.declaration_id = %(decl_id)s"
    attribs = query_some(query, collec_id, decl_id=decl_id)
    if attribs:
        return attribs[0]
    else:
        return ('', '', '', 0, 0, '', '',
                '\n***** No proof is available. *****\n', 0)

# Given a decl id for a judgement, find the decl ids for all TCCs
# in the same theory having the same name.

def get_judgement_tccs(collec_id, decl_id):
    # Can also have axioms generated from judgements; they're not included here.
    query = "SELECT G.generated_id FROM GeneratedDeclarations G " \
            "WHERE G.declaration_id = %(decl_id)s AND " \
            "G.decl_type = 'judgement' AND G.gen_type = 'tcc'"
    attribs = query_some(query, collec_id, decl_id=decl_id)
    return attribs

# Get the name of a proof step to be in the database.

def get_step_name(collec_id, step_id):
    query = "SELECT name FROM AllNames N " \
            "JOIN Steps S ON (S.name_id = N.name_id) " \
            "WHERE step_id = %(step_id)s"
    attribs = query_some(query, collec_id, step_id=step_id)
    return attribs[0][0]

# For steps, get step name, step type, library name, docstring.
# Assumes step_id is in rt[4] and collec_id is in rt[-1].

def get_step_attributes(result_tuple):
    step_id = result_tuple[4]
    query = "SELECT N.name, S.step_type, L.name, S.docstring " \
            "FROM Steps S JOIN AllNames N ON (S.name_id = N.name_id) " \
            "JOIN Libraries L ON (S.library_id = L.library_id) " \
            "WHERE S.step_id = %(step_id)s"
    attribs = query_some(query, result_tuple[-1], **locals())
    return attribs[0]

# For modules and libraries, get appropriate values but reserve first
# three values for decl, theory and library names.  Return empty string
# for those that don't apply.

def get_module_attributes(result_tuple):
    module_id = result_tuple[4]
    query = "SELECT '', T.name, T.library, T.module_type " \
            "FROM Theories T WHERE T.theory_id = %(module_id)s"
    attribs = query_some(query, result_tuple[-1], **locals())
    return attribs[0]

def get_library_attributes(result_tuple):
    lib_id = result_tuple[4]
    query = "SELECT '', '', L.name FROM Libraries L " \
            "WHERE L.library_id = %(lib_id)s"
    attribs = query_some(query, result_tuple[-1], **locals())
    return attribs[0]

# Get the names of all modules for a library known to exist.

def get_library_module_names(collec_id, lib_id):
    query = "SELECT T.name FROM Theories T " \
            "WHERE T.library_id = %(lib_id)s"
    attribs = query_some(query, collec_id, lib_id=lib_id)
    return [ a[0] for a in attribs ]

# For all declarations referenced from a given declaration, theory and
# library, return their name id, theory and library.

def get_relevant_decl_refs(dname, dthy, dlib, rname):
    query = "SELECT DISTINCT R.ref_name_id, R.ref_theory, R.ref_library " \
            "FROM AllNames N1 JOIN AllNames N2 " \
            "JOIN DeclarationReferences R ON " \
            "(R.name_id = N1.name_id and R.ref_name_id = N2.name_id) " \
            "WHERE N1.name = %(dname)s and R.theory = %(dthy)s and " \
            "R.library = %(dlib)s and N2.name = %(rname)s"
    refs = do_query(query, **locals())
    return refs

# For all declarations referenced from a given proof, theory and
# library, return their name id, theory and library.

def get_relevant_proof_refs(dname, dthy, dlib, rname):
    query = "SELECT DISTINCT R.ref_name_id, R.ref_theory, R.ref_library " \
            "FROM AllNames N1 JOIN AllNames N2 " \
            "JOIN ProofReferences R ON " \
            "(R.decl_name_id = N1.name_id and R.ref_name_id = N2.name_id) " \
            "WHERE N1.name = %(dname)s and R.theory = %(dthy)s and " \
            "R.library = %(dlib)s and N2.name = %(rname)s"
    refs = do_query(query, **locals())
    return refs

# For all declarations with a given name, return their 
# name id, theory and library.

def get_all_decls_name(name):
    query = "SELECT DISTINCT D.name_id, D.theory, D.library " \
            "FROM AllNames N JOIN Declarations D ON " \
            "(D.name_id = N.name_id) WHERE N.name = %(name)s "
    decls = do_query(query, **locals())
    return decls


def get_all_item_attributes(q_type, result_tuples):
    if q_type == 'declaration':
        get_fn = get_declaration_attributes
    elif q_type == 'proof':
        get_fn = get_proof_attributes
    elif q_type == 'step':
        get_fn = get_step_attributes
    elif q_type == 'module':
        get_fn = get_module_attributes
    elif q_type == 'library':
        get_fn = get_library_attributes
    else:
        get_fn = lambda rt: None
    return [ get_fn(rt) for rt in result_tuples ]

# Get the body of a cached theory known to be in the database.
# If not cached, read from source file.

def get_theory_body(theory_id):
    query = "SELECT body FROM TheoryBodies WHERE theory_id = %(theory_id)s"
    attribs = do_query(query, **locals())
    if attribs[0][0]:
        return attribs[0][0]

