
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Database client connections are managed by this module.
# Also used by indexing functions.
# Loading this module establishes a connection to the SQLite server
# for the Hypatheon database.  Several procedures are provided for invoking
# queries and transactions.

import os, sys, time, string, re
import shutil

from StringIO import StringIO
from traceback import print_exc

from app_globals       import *

if explain_queries:
    explain_log = open(os.path.join(log_dir, 'query_explanations'), 'a')
else:
    explain_log = None

_max_tries = 4          # Attempts for connection opening


emit_log_entry(ops_log_file,
               'New Hypatheon session.  Process ID = %s.' % os.getpid())
emit_log_entry(ops_log_file, 'Collections, databases found:\n' +
               ''.join([ '%s: %s\n' % (c, d) for c, d, v in collections ]))
emit_log_entry(ops_log_file,
               'Environment variables:\n%s' %
               ''.join([ '%s:  %s\n' % (evar, os.environ.get(evar, ''))
                         for evar in
                         ('PVSPATH', 'PVS_LIBRARY_PATH', 'HYPATHEON') ]))


#-----------------------------------------

# Currently using standard Python database adapter for SQLite
# because it is usually pre-installed under Linux.
# Another possibility is APSW(?), which would need to be retrieved and
# installed first.

try:
    from pysqlite2 import dbapi2 as sqlite
except ImportError:
    try:
        import sqlite3 as sqlite
    except ImportError:
        import sqlite

sqlite_version   = os_command_output('sqlite3 -version').strip()
pysqlite_version = sqlite.version

emit_log_entry(ops_log_file,
               'Version info:\nPython version:  %s\n'
               'SQLite version:  %s\n'
               'Pysqlite version:  %s\n' %
               (sys.version, sqlite_version, pysqlite_version))

_name_pattern = re.compile('%\((\w+)\)s')    # matches %(name)s

if sqlite.paramstyle == 'qmark':
    # for pysqlite2, replace %(name)s by :name and %s by ?
    def exec_sql(sql): return _name_pattern.sub(':\\1', sql.replace('%s', '?'))
else:
    def exec_sql(sql): return sql


# Establish a connection and provide a cursor for queries.

db_conn, db_cursor = [], []

def connect_to_db(db_path):
    # If DB schema is not current, return None.
    if not os.path.exists(db_path):
        shutil.copyfile(empty_db_path, db_path)
    conn = sqlite.connect(db_path)
    cur = conn.cursor()
    try:
        cur.execute("SELECT name FROM SQLITE_MASTER WHERE name = 'Hypatheon'")
        if cur.fetchone():      # Hypatheon table exists
            cur.execute("SELECT version_at_creation FROM Hypatheon")
            version = version_tuple(cur.fetchone()[0])
            obsolete = version < db_schema_change[-1]
        else:
            obsolete = 1   # Hypatheon table is missing
    except OperationalError:
        obsolete = 1       # Hypatheon table is missing
    if not obsolete:
        set_db_cache_size(cursor=cur, path=db_path)
        cur.execute( 'SELECT name FROM Libraries' )
        db_libs = [ t[0] for t in cur.fetchall() ]
        find_library_dirs(*db_libs)    # look up local paths for libraries
        return conn
    conn.close()
    return None            # db file too old

# Internal SQLite cache_size is set according to database file size.
# We allocate one page of cache (2K) for every 8K of database file,
# while observing a min of 5K pages and a max of 100K pages.

def set_db_cache_size(cursor=None, path='', collec_name=''):
    if not cursor:
        for id, name_path_vers in enumerate(collections):
            if name_path_vers[0] == collec_name:
                path = name_path_vers[1]
                break
        else:
            return    # nothing for this collection name
        cursor = db_cursor[id]
    cache_size = os.path.getsize(path) // 8000
    cache_size = min(100000, max(5000, cache_size))
    cursor.execute( 'PRAGMA cache_size = %d' % cache_size )

def open_valid_db_connections(coll_name_path_vers):
    old_dbs = []
    if coll_name_path_vers == None:
        # open a connection for each database on collections list,
        # which is assumed to have been set already during startup
        good_conns, bad_colls = [], []
        for coll in collections:
            conn = connect_to_db(coll[1])
            if conn:
                good_conns.append(conn)
            else:
                bad_colls.append(coll)
                old_dbs.append(coll[1])
        db_conn[:] = good_conns
        db_cursor[:] = [ d.cursor() for d in db_conn ]
        bad_colls.reverse()
        for c in bad_colls:
            del collections[collections.index(c)]
    else:
        # add a new collections element before opening
        conn = connect_to_db(coll_name_path_vers[1])
        if conn:
            collec_id = len(collections)
            collections.append(coll_name_path_vers)
            db_conn.append(conn)
            db_cursor.append(db_conn[collec_id].cursor())
        else:
            old_dbs = [coll_name_path_vers[1]]
    return old_dbs

def open_db_connection(coll_name_path_vers=None):
    # some collections can be deleted if their database schemas are old
    old_dbs = open_valid_db_connections(coll_name_path_vers)
    # Make sure we have at least a default database.
    if not collections:
        if not os.path.exists(default_db_path):
            shutil.copy(empty_db_path, default_db_path)
        open_valid_db_connections((default_coll_name, default_db_path, ''))
    emit_log_entry(ops_log_file,
                   'Validated collections, databases:\n' +
                   ''.join([ '%s: %s\n' % (c, d)
                             for c, d, v in collections ]))
    if old_dbs:
        raise DatabaseError, \
            "Database files %s were created under older " \
            "database schemas. They cannot be opened with the " \
            "current version of Hypatheon."  % old_dbs

def close_db_connection(collec_id=None):
    if collec_id == None:
        # close all connections
        for d in db_conn: d.close()
        del db_cursor[:]
        del db_conn[:]
        # del collections[:]
    else:
        db_conn[collec_id].close()
        del db_cursor[collec_id]
        del db_conn[collec_id]
        del collections[collec_id]   # used by db deletion commands

# Empty a database's contents by replacing it with a fresh empty copy.

def empty_database(collec_id):
    collec_name, collec_path, collec_vers = collections[collec_id]
    close_db_connection(collec_id)
    shutil.copyfile(empty_db_path, collec_path)
    try:
        open_db_connection((collec_name, collec_path, collec_vers))
    except DatabaseError:
        pass       # empty db should have current schema

# Adding a database creates a new file in <hyp>/data.

def add_database(collec_name, collec_vers, copied_db, dest_dir):
    collec_str = collec_name
    if collec_vers:
        collec_str += '-' + collec_vers
    db_path = os.path.join(dest_dir, 'hyp-%s.sdb' % collec_str)
    if os.path.exists(db_path): return ''   # don't overwrite file
    shutil.copyfile(copied_db, db_path)
    conn = connect_to_db(db_path)      # copies empty db if db_path nonexistent
    if not conn: return ''             # failure to connect
    db_conn.append(conn)
    db_cursor.append(conn.cursor())
    collections.append((collec_name, db_path, collec_vers))
    return db_path        # success


# Invocation of SQL queries against the SQLite databases is normally
# carried using the following functions.
# NOTE: If a query contains '%' chars for LIKE operators, don't use the
# execute(str, params) form or it will give errors.

def do_query(str, **params):
    return do_query_any(str, 1, -1, params)

def query_some(str, collec_id, **params):
    return do_query_any(str, 1, collec_id, params)

def do_query_effect(str, **params):
    do_query_any(str, 0, -1, params)

def query_some_effect(str, collec_id, **params):
    do_query_any(str, 0, collec_id, params)

if sqlite.paramstyle == 'qmark':
    def fetch_row_tuple_collec(cursors, i):
        return [ row + (i,) for row in cursors[i].fetchall() ]
else:
    # version 1 of pysqlite returns instances ==> map to tuples
    def fetch_row_tuple_collec(cursors, i):
        return [ tuple(row) + (i,) for row in cursors[i].fetchall() ]

def do_query_any(q_str, use_result, collec_id, params):
    # if collec_id = -1, run on all databases
    # if collec_id is a sequence (of ids), run on selected databases
    try:
        if params:
            q_str = exec_sql(q_str)
        if isinstance(collec_id, int):
            if collec_id >= 0:
                coll_ids = [collec_id]             # a single id
                cursors = [ db_cursor[collec_id] ]
            else:
                coll_ids = range(len(db_cursor))   # query all databases
                cursors = db_cursor
        else:
            coll_ids = collec_id                   # sequence of ids
            cursors = [ db_cursor[id] for id in collec_id ]

        start = time.time()
        for cur in cursors: cur.execute(q_str, params)
        if use_result:
            result = []
            for i in coll_ids:
                result.extend(fetch_row_tuple_collec(db_cursor, i))
            q_time = (time.time() - start) * 1000
            # minor queries are logged here:
            append_query_explanation(q_str, q_time, cursors[0],
                                     params, result, 2)
        else:
            return None
        return result
    except sqlite.Error, err:
        ### fix for multiple DBs
        trace = StringIO()
        print_exc(1, trace)
        trace_text = trace.getvalue()
        emit_log_entry(ops_log_file,
                       "do_query exception '%s' from sqlite on query\n  '%s'"
                       % (err, (str, params)))
        emit_log_entry(ops_log_file, trace_text)
        raise DatabaseError


# Given a do_query result on a sequence of collections, determine
# collection IDs for the databases that returned some tuples.

def result_collec_ids(result):
    return [ i for i in range(len(result)) if result[i] ]

# When app settings call for query explanations to be generated, get SQLite
# create them, then append them to the log file.

def append_query_explanation(q_str, q_time, cursor, params, result, level):
    if explain_queries == level and q_str.lstrip().lower().startswith('select'):
        cursor.execute('explain query plan ' + q_str, params)
        expl = '\n'.join([ ('%s %s %s' % r) for r in cursor.fetchall() ])
        emit_log_entry(explain_log,
                       'Query (%d matches, %.1f ms): %s\n\n%s\n'
                       % (len(result), q_time, q_str, expl),
                       omit_rep_event='query_plan')
        if explain_queries > 2:
            cursor.execute('explain ' + q_str, params)
            expl = '\n'.join([ ' '.join(map(str, r))
                               for r in cursor.fetchall() ])
            emit_log_entry(explain_log, '\n%s\n' % expl,
                           omit_rep_event='query_code')

# Database access utilities

def getDatabaseSize(db_path, mb=0):
    size = os.path.getsize(db_path)
    if mb: return size / 1000000.0
    else:  return size

# The server/database status combines stored information (counts of various
# database tables) with a few other items that are looked up.

def getServerStatus(collec_id):
    collec = collections[collec_id]
    collec_dir = os.path.dirname(collec[1])
    version_file = os.path.join(collec_dir, 'VERSION')
    if os.path.exists(version_file):
        collec_version = file(version_file).read().strip()
    else:
        collec_version = collec[2] or '---'   # version can appear in file name
    db_size =  '%8.2f' % getDatabaseSize(collec[1], mb=1)
    pvs_version = query_some('SELECT pvs_version from Hypatheon',
                             collec_id)[0][0]
    entity_stats = query_some('SELECT entity_stats from Hypatheon', collec_id)
    return [collec[0], collec_version, pvs_version] + \
           eval(entity_stats[0][0]) + [db_size]

# Status is gathered for all active collections and their databases.  If more
# than one, totals are computed as well.

def getCollectionsStatus(append_totals=1):
    status = filter(None,
                    [ getServerStatus(id) for id in range(len(collections)) ])
    if append_totals and len(status) > 1:
        trans = transpose_lists(status)
        totals = [ 'Totals', '---', '---' ] + \
                 [ reduce(add, row) for row in trans[3:-1] ] + \
                 [ '%8.2f' % reduce(add, map(float, trans[-1])) ]
        status.append(totals)
    return status

# Return list of tuples: (collection, library, theory count, indexing timestamp).

def getCollectionsLibraries():
    def get_lib(collec_id):
        lib_items = query_some("select library_id, name, index_time "
                               "from libraries", collec_id)
        lib_counts = \
            [ query_some("select count() from theories where "
                         "library_id = %(lib_id)s",
                         collec_id, lib_id=item[0])[0][0]
              for item in lib_items ]
        collec_name, db_path, db_vers = collections[collec_id]
        return [ (collec_name, db_vers, item[0][1], item[1],
                  time.asctime(time.localtime( int(item[0][2]) )))
                 for item in zip(lib_items, lib_counts) ]
    return reduce(add, [ get_lib(id) for id in range(len(collections)) ])

# Return list of tuples (library, file, last mod timestamp)
# where file or library isn't indexed in any collection.
# Also find cases where theories and their files have dissimilar names.

def getRogueFiles():
    dir_lib_names = collect_library_names() + [ ('prelude', ['prelude']) ]
    all_libs = reduce(add, [ libs for dir, libs in dir_lib_names ])
    indexed_libs = [ lib[0] for lib in do_query("SELECT name FROM Libraries") ]
    unindexed_libs = [ lib for lib in all_libs if lib not in indexed_libs ]
    
    all_lib_file = {}
    for dir, libs in dir_lib_names:
        for lib in libs:
            lib_pattern = '%s/*.pvs' % os.path.join(dir, lib)
            if lib in unindexed_libs:
                if lib == 'prelude':
                    lib_dirs = [ os.path.join(pvs_lib_dir, 'prelude.pvs') ]
                else:
                    lib_dirs = glob.glob(lib_pattern)
                mtimes = [ os.path.getmtime(p) for p in lib_dirs ]
                all_lib_file[('***', lib)] = max(mtimes)
                continue
            if lib in pvs_distrib_libs:
                continue         # this needs to follow previous check
            files = [ (os.path.splitext(os.path.basename(p))[0],
                       os.path.getmtime(p))
                      for p in glob.glob(lib_pattern) ]
            for name, mtime in files:
                all_lib_file[(name, lib)] = mtime

    thy_file_items = \
        do_query("SELECT T.library, T.name, F.rel_path "
                 "FROM FileDescriptors F JOIN Theories T "
                 "ON (F.file_id = T.file_id) ")
    mismatched = []
    for lib, thy, rel_path, cid in thy_file_items:
        if lib in pvs_distrib_libs: continue
        try:
            name = os.path.splitext(os.path.basename(rel_path))[0]
            if name != thy and not name.endswith('_adt') \
                    and not name.endswith('_codt'):
                mismatched.append((lib, thy, '%s.pvs' % name))
            del all_lib_file[(name, lib)]     # remove indexed file
        except KeyError:
            pass        # not indexed in collection cid

    # collect lib, file, mtime from remaining (unindexed) items
    unindexed = [ (lfm[0][1], lfm[0][0], lfm[1])
                  for lfm in all_lib_file.items() if lfm[0][0] != 'top' ]
    unindexed.sort()
    mismatched.sort()
    return unindexed, mismatched


# The following is called after indexing to update the global counts of
# database entities.  It should be called just before committing a transaction.

def updateEntityStats (collec_id, cursor):
    try:
        tables = ('libraries', 'theories', 'declarations', 'proofs', 'steps',
                  'FileDescriptors', )
        counts = [ query_some("select count() from %s" % t, collec_id)[0][0]
                   for t in tables ]
        module_counts = \
            [ query_some("select count() from theories "
                         "where module_type = %(mt)s", collec_id,
                         mt=mt.strip())[0][0]
              for mt in module_types ]
        decl_counts = \
            [ query_some("select count() from declarations "
                         "where decl_type = %(dt)s", collec_id,
                         dt=dt.strip())[0][0]
              for dt in declaration_types ]
        proof_counts = \
            [ query_some("select count() from proofs "
                         "where proof_type = %(dt)s", collec_id,
                         dt=dt.strip())[0][0]
              for dt in proof_types ]
        step_counts = \
            [ query_some("select count() from steps "
                         "where step_type = %(dt)s", collec_id,
                         dt=dt.strip())[0][0]
              for dt in step_types ]
    except DatabaseError:
        return
    stats = counts[:2] + module_counts + \
            counts[2:3] + decl_counts + \
            counts[3:4] + proof_counts + \
            counts[4:5] + step_counts + \
            counts[5:]
    query = 'UPDATE Hypatheon SET entity_stats = %s'
    cursor.execute( exec_sql(query), ('%s' % stats,) )

# ---------

# Determine query type by which search item terms are present.
# Query types are library, module, declaration, proof, step and path.
# Negative terms are recognized for declarations only.
# Returns (<query type>, <search item types>, <ignored terms>).

def query_type(queries):
    def neg_type(term):
        if term[0] in '!-': return (term[0], term[1:])
        else:               return ('', term)
    raw_terms = [ neg_type(s.lower()) for s in queries[3].split() ]
    
    item_types, ignored = [], []
    for neg, term in raw_terms:
        for itype in all_item_types:
            if itype.startswith(term):
                if itype not in non_decl_types:
                    item_types.append(neg + itype)
                elif neg:
                    # negative type terms not useful for non-decls
                    ignored.append(neg + itype)
                else:
                    item_types.append(itype)
                break
        else:
            ignored.append(neg + term)

    def purge_item(all_items, *deletions):
        items = all_items[:]
        for d in deletions:
            try:
                items.remove(d)
            except ValueError:
                pass
        return items

    ### handle negatives???
    for qtype_list in type_hierarchy[:-1] :
        qtype = qtype_list[0]
        if qtype in item_types:
            return (qtype, [], purge_item(item_types, qtype) + ignored)
        for subtype in qtype_list[1:]:
            if subtype in item_types:
                return (qtype, [subtype],
                        purge_item(item_types, subtype) + ignored)

    if 'declaration' in item_types:
        return ('declaration', [], ignored)
    elif queries[0] or queries[1] or item_types:
        return ('declaration', item_types, ignored)
    else:
        return ('module', item_types, ignored)
#        return ('path', item_types, ignored)   ### path queries removed
