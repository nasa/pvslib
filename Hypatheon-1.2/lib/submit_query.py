
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Given a user's 4-tuple of search terms, the following functions
# are used to formulate and submit an equivalent query against
# the Hypatheon database.


import os, sys, time, string, re

from app_globals       import emit_log_entry
from db_connect        import *


# Maintain a counter for creating distinct names in query joins.

def query_index(reset_value=None):
    global query_index_counter
    if reset_value == None: query_index_counter += 1
    else:                   query_index_counter  = reset_value
    return query_index_counter

ref_terms_delimiter = '>>>'      # referrers >>> referents
ref_count_delimiter = '>>#'      # referrers >># (ignored)

#---------------


# Parse query string into terms, allowing for quotes and escapes.
# Returns (plain_terms, regexp_terms, neg_regexp).
### check for embedded quotes or apply escaping ???
# Anchoring values: 0 - none, 1/2 - left/right anchored, 3 - both ends

def parse_query_terms(query, regexp=0, anchored=0):
    ### no regexp for now
    try:
        terms = parse_query_terms_any(query, anchored)
    except SearchTermError:
        raise SearchTermError, error_messages['terms_malformed']
    if (terms[1] or terms[2]) and not regexp:
        raise SearchTermError, error_messages['no_regexp_terms']
    return terms
        
def parse_query_terms_any(query, anchored):
    query = query.strip()
    parsed_terms = [[], [], []]
    if not query: return parsed_terms

    # Break query string into separate terms, accounting for quoted terms.
    while query:
        regexp = 0
        if len(query) > 1 and query[0] in '-!':
            neg_prefix = '-'
            query = query[1:]
        else:
            neg_prefix = ''
        if query[0] in '\'"':
            # a quoted string means an anchored term
            start = 1
            while 1:
                # find right end of quoted string,
                # allowing for possible interior quote chars
                end = query.find(query[0], start)
                if end < 0 or end < len(query)-1 and query[end+1] != ' ':
                    raise SearchTermError    # missing or embedded right quote
                term = query[:end+1]    # includes both quote chars
                try:
                    term = eval(term)
                    break  # clean parse => use it
                except:
                    start = end + 1   # must have escaped quotes; try again
            term_anchored = 3
        else:
            start = 0
            while 1:
                # find right end of term,
                # allowing for possible interior escaped blanks
                end = query.find(' ', start)
                if end < 0:
                    try:
                        term = eval('"' + query + '"')
                        end = len(query)
                        break
                    except:
                        raise SearchTermError    # malformed somehow
                elif query[end-1] == '\\':   # must be immediately previous char
                    # remove backquote and continue scanning
                    query = query[:end-1] + query[end:]
                    start = end   # accounts for shrinkage of one char
                else:
                    try:
                        term = eval('"' + query[:end] + '"')
                        break
                    except:
                        raise SearchTermError    # malformed somehow
            term_anchored = 0
        anchor = anchored or term_anchored    # in range 0..3
        if anchor and 1 or term and term[0] == '%': left_wild = ''
        else:           left_wild = '%'
        if anchor and 2 or term and term[-1] == '%': right_wild = ''
        else:           right_wild = '%'
        if '"' in term or "'" in term or term.strip() == '':
            raise SearchTermError    # had quotes that weren't outermost
        term = left_wild + term + right_wild
        parsed_terms[regexp].append(neg_prefix + term)
        query = query[end+1:].lstrip()
        ### check on termination
    return parsed_terms


ref_type_pattern = re.compile('.*(?:\s|\A)(\w+)\s*(\*?)\s*\Z')

# Parse ref term sequences of the form:
#   R1: term1 term2 ... R2: term ...   ...   Rk: term ...
# where Rj is the prefix of a referenced object type (e.g, func, th, lib)
# optionally followed by '*'.  This function is called separately for
# forward and inverse ref terms.
# Return ( [ (<genus>, <species>, <closure>, <terms>), ... ], <merged terms> )

def typed_ref_terms(terms, q_type):
    
    if q_type == 'declaration':
        default_types = ('declaration', 'function')
    elif q_type == 'proof':
        default_types = ('declaration', '')
    elif q_type == 'module':
        default_types = ('module', 'theory')
    elif q_type == 'step':
        default_types = ('step', '')
    else:
        default_types = ('library', '')

    # Use colons after ref types as separators.  First and last items
    # need to be treated specially.
    type_sets = terms.split(':')
    if len(type_sets) < 2:
        # no ref type supplied; use default types
        terms = parse_query_terms(type_sets[0])[0]
        if terms:
            return [default_types + ('', terms)], terms
        else:
            return [], []

    ref_types, ref_closure, ref_terms = [], [], []
    for s in type_sets[:-1]:
        # Have ref terms from set n followed by ref type from set n+1.
        # Match ref type at end of string.
        match = ref_type_pattern.match(s)
        if match:
            # index1, index2 = match.start(1), match.end(1)
            index1 = match.start(1)
            prefix = match.group(1).lower()   # s[index1:index2].lower()
            for itype in all_item_types:
                if itype.startswith(prefix):
                    ref_types.append(itype)
                    ref_closure.append(match.group(2))
                    break
            else:
                title, msg = error_messages['bad_ref_type']
                raise SearchTermError, (title, msg % prefix)
            # Everything before the ref type is a list of ref terms.
            ref_terms.append(parse_query_terms(s[:index1])[0])
        else:
            raise SearchTermError, error_messages['ref_terms_malformed']
    if ref_terms[0]:
        # first term(s) were untyped
        ref_types.insert(0, default_types[1] or default_types[0])
        ref_closure.insert(0, '')
    else:
        del ref_terms[0]     # null prefix before first ref type
    ref_terms.append(parse_query_terms(type_sets[-1])[0])  # after last ':'
    typed_terms = []
    ref_genus   = [ type_genus[s]   for s in ref_types ]
    ref_species = [ type_species[s] for s in ref_types ]
    ref_terms = [ t or ['%'] for t in ref_terms ]    # map empty terms to '%'
    for type_closure_terms in \
            zip(ref_genus, ref_species, ref_closure, ref_terms):
        typed_terms.append(type_closure_terms)
    merged_terms = reduce(add, ref_terms)
    return typed_terms, merged_terms

# Parse ref term sequences of two forms:
#   [ <inverse typed terms> >>> ] <forward typed terms>
#   <inverse typed terms> >>#                       (for ref count queries)
# Return ( ( [ (<genus>, <species>, <closure>, <terms>), ... ],    # forward
#            [ (<genus>, <species>, <closure>, <terms>), ... ] ),  # inverse
#          <merged terms> )

def parse_ref_terms(query, q_type):
    terms = query.split(ref_count_delimiter)
    if len(terms) > 1:
        # Special case for ref count queries.
        # Return (([], inverse typed terms), untyped terms), then delimiter.
        r_terms = terms[0].strip() or '%'              # avoid empty terms
        inv_terms = typed_ref_terms(r_terms, q_type)
        return ([], inv_terms[0]), inv_terms[1], ref_count_delimiter

    terms = query.split(ref_terms_delimiter)
    terms.reverse()
    if len(terms) == 1:
        terms.append('')
    both_sets = map(lambda tl: typed_ref_terms(tl, q_type), terms)
    # return (normal, inverse) typed terms, then joined list of untyped terms
    return (both_sets[0][0], both_sets[1][0]), \
           both_sets[0][1] + both_sets[1][1], ref_terms_delimiter


# # NOTE: following check and disjunctive terms not implemented yet.
# # A term has one or more disjoined subterms, each of which may be negated
# # Each subterm contains non-whitespace characters.

# valid_path_term    = re.compile('(-|!)?\.?\w+')
# valid_content_term = re.compile('(-|!)?\S+(\|(-|!)?\S+)*')

# def valid_search_terms(terms, pattern):
#     for t in terms:
#         m = pattern.match(t)
#         if m and m.group() == t: continue
#         return 0
#     return 1


# Generate the proper SQL code snippet for matching a search term.

def match_term(term, use_equal=0):
    neg = len(term) > 1 and term[0] in '!-'
    if use_equal:
        if neg: return " != '%s'" % term[1:]
        else:   return  " = '%s'" % term
    else:
        # use LIKE when no wildcards are present to retain case insensitivity
        if neg: return " NOT LIKE '%s'" % term[1:]
        else:   return " LIKE '%s'" % term

# Use suffix table to find rows matching a range of strings, where range
# is derived from the search term.  Suffix matching is case insensitive.
# Generate the SQL subquery.

def match_suffix(term, name_column="name_id"):
    select_clause = "SELECT %s FROM " % name_column
    term = term.lower()
    core_term = term.strip('%')
    if not core_term:
        return select_clause + "AllNames WHERE name LIKE '%'"

    if term and '%' not in core_term:
        if term[-1] == '%':        # right wildcard 
            if term[0] == '%':          # left wildcard
                term = term[1:-1]
                clause = "suffix >= '%s' and suffix < '%s'"
                q = select_clause + "SuffixNames WHERE %s "
            else:
                term = term[:-1]
                clause = "name >= '%s' and name < '%s'"
                q = select_clause + "AllNames WHERE %s "
            # "increment" the last character to serve as upper bound; watch
            # for '&', which is followed by "'" => double it for legal SQL;
            last_char = "''" if term[-1] == '&' else chr(1+ord(term[-1]))
            return q % (clause % (term, term[:-1] + last_char))
        else:
            if term[0] == '%':          # left wildcard
                q = select_clause + "AllNames WHERE name LIKE '%s'"
                return q % term
            else:                       # treats '_' as literal char
                q = select_clause + "AllNames WHERE name = '%s' "
                return q % term
    else:
        # use LIKE to retain case insensitivity
        q = select_clause + "AllNames where name LIKE '%s'"
        return q % term

# Sort search terms into two lists: one positive, one negative.

def polarize_terms(terms):
    pos, neg = [], []
    for term in terms:
        if len(term) > 1 and term[0] in '!-':
            neg.append(term[1:])
        else:
            pos.append(term)
    return pos, neg

def polarize_term_pairs(terms):
    pos, neg = [], []
    for term in terms:
        if len(term) > 1 and term[1][0] in '!-':
            neg.append((term[0], term[1][1:]))
        else:
            pos.append(term)
    return pos, neg

# Parse reference terms that might appear in partially or fully qualified
# forms.  The fully qualified syntax is the same as PVS notation:
#   <lib term>@<thy term>.<decl term>
# The terms may be blank, although not all three.  Either symbol '@' or '.'
# may be omitted for a partial qualification.  Both symbols must be present
# to specify both library and declaration terms, even if the theory term is
# blank.  Absence of the symbols indicates the term is for declarations.
# Wildcards may be used within the terms.

def parse_qualified_term(term):
    if term in ('', '%'): return ('', '', term)
    if term[0]  == '%': left = '%'; term = term[1:]
    else:               left = ''
    if term[-1] == '%': right = '%'; term = term[:-1]
    else:               right = ''
    lib_rest = term.split('@')
    if len(lib_rest) > 1: lib, rest = lib_rest
    else:                 lib, rest = '', lib_rest[0]
    thy_decl = rest.split('.')
    if len(thy_decl) > 1: thy, decl = thy_decl
    elif lib:             thy, decl = thy_decl[0], ''
    else:                 thy, decl = '', thy_decl[0]
    return [ t and (left + t + right) for t in (lib, thy, decl) ]


# Pull out collection names embedded in path terms using notation '[name]'.
# Return list of collection ids and rest of path terms (rejoined as a string).

find_collections_pattern  = re.compile('\[\s*(\w+)\s*\]')
split_collections_pattern = re.compile('\[\s*\w+\s*\]')

def parse_collection_names(terms):
    collec_names = find_collections_pattern.findall(terms)
    rest = ' '.join(split_collections_pattern.split(terms))
    if collec_names:
        all_names = [ c[0] for c in collections ]
        collec_ids = []
        for name in collec_names:
            try:
                collec_ids.append(all_names.index(name))
            except ValueError:
                raise SearchTermError, error_messages['invalid_collection']
    else:
        collec_ids = range(len(collections))    # default: all collections
    return collec_ids, rest

# Generate a WHERE clause to find path matches based on one or more
# name fragment patterns.  Successful matches are paths satisfying
# every one of the fragment patterns.  Include optional subclauses
# to constrain by file type and mod_time bounds.

def path_name_where(q_type, p_terms, t_terms, *mtimes):
    if mtimes:
        time_clauses = ["%d <= mod_time" % mtimes[0],
                        "mod_time <= %d" % mtimes[1]]
    else:
        time_clauses = []
    type_clauses = []
    if q_type == 'step':
        path_clauses = []   # not meaningful; consider issuing a warning
    else:
        path_pattern = 'rel_path %s' if q_type == 'library' \
                       else 'module_path %s'
        path_clauses = [ path_pattern % match_term(term.replace('/', '@'))
                         for term in p_terms ]
    subtests = " AND ".join(path_clauses + time_clauses + type_clauses)
    return subtests

# Filter out subsets of ref terms based on search type and forward vs.
# inverse direction.  Unimplemented combinations of ref type and search type
# will trigger error messages.

def selected_type_terms(ref_terms, search_genus, inverse, type_genera):
    def type_terms(closure):
        return [ (gsct[0], gsct[1], gsct[3]) for gsct in ref_terms
                 if gsct[0] in type_genera and gsct[2] == closure ]
    def make_msg(genus):
        if inverse:
            title, msg = error_messages['unimplemented_ref_type_inverse']
            return title, msg % (genus, search_genus)
        else:
            title, msg = error_messages['unimplemented_ref_type_forward']
            return title, msg % (search_genus, genus)

    ### remove when implementation complete:
    for gsct in ref_terms:
        if gsct[0] in type_genera: continue
        raise SearchTermError, make_msg(gsct[0])
    result = type_terms(''), type_terms('*')
    return result

# Create JOIN clauses for reference terms.  Table lookup depends on both
# search item type and reference term type.  Arg inverse is encoded as:
#   0 - forward reference (search target to referent)
#   1 - inverse reference (referrer to search target)
# Returns a string of subqueries to be inserted in the main SQL query.
# For ref count queries, also returns a reference table name prefix.

def any_ref_type_subquery(search_genus, ref_type_terms, inverse, ref_genera,
                          ref_count=0):
    if search_genus == 'path': return "" # no references ### issue warning?

    # set up an intersection query for multiple reference names
    # type_terms of the form: [ (<genus>, <species>, <closure>, <terms>), ... ]

    ref_closure_terms = \
        selected_type_terms(ref_type_terms[inverse], search_genus, inverse,
                            ref_genera)
    if not ref_closure_terms: return ""   ### , ()

    # decl,proof genera don't support closures
    def decl_proof_ref_clauses(ref_clause, inverse, sel_genus):
        term_tuple_lists = [ zip([species]*len(terms), terms)
                             for genus, species, terms
                             in ref_closure_terms[0]
                             if genus == sel_genus ]
        if not term_tuple_lists:
            return ""
        all_tuples = reduce(add, term_tuple_lists, [])
        pos_tuples, neg_tuples = polarize_term_pairs(all_tuples)
        if neg_tuples and not pos_tuples:
            pos_tuples = [('', '%')]      # need first clause for EXCEPT
        if pos_tuples:
            subqueries = \
                " INTERSECT ".join(
                    [ ref_clause(type, *parse_qualified_term(term))
                      for type, term in pos_tuples ])
        else:
            subqueries = ref_clause('', '', '', '')
        if neg_tuples:
            subqueries += " EXCEPT " + \
                " EXCEPT ".join(
                    [ ref_clause(type, *parse_qualified_term(term))
                      for type, term in neg_tuples ])
        return subqueries

    def decl_proof_ref_subquery(sel_genus, table):
        # table is prefix to refs table name
        id_column = search_genus + '_id'
        if inverse:
            sel_columns = 'name_id, ref_name_id as dname_id, ' \
                          'ref_theory as theory, ' \
                          'ref_library as library'
            name_col, type_col = 'name_id', 'decl_type'
        else:           # for direct refs
            sel_columns = id_column
            name_col, type_col = 'ref_name_id', 'ref_type'

        def ref_clause(type, lib_term, thy_term, decl_term):
            clause = "SELECT %s FROM %sReferences R " % (sel_columns, table)
            if decl_term:
                clause += "JOIN (%s) S ON (R.%s = S.sname_id) " % \
                          (match_suffix(decl_term, "name_id as sname_id"),
                           name_col)
            where = []
            if type:   # species specified
                where.append(" %s = '%s' " % (type_col, type))
            if thy_term:
                where.append(" R.theory LIKE '%s' " % thy_term)
            if lib_term:
                where.append(" R.library LIKE '%s' " % lib_term)
            if where:
                clause += " WHERE %s " % 'AND'.join(where)
            return clause

        ### should also check matching theory and library
        # no closure case for decls and proofs
        subqueries = decl_proof_ref_clauses(ref_clause, inverse, sel_genus)
        counter = query_index()
        
        if not subqueries:
            return ""
        elif inverse:
            name_id_col = 'decl_name_id' if table == 'Proof' else 'name_id'
            result = "SELECT %s FROM %ss D JOIN (%s) R%s ON " \
                     "(D.%s = R%s.dname_id AND " \
                     "D.theory = R%s.theory and D.library = R%s.library) " \
                     % (id_column, table, subqueries,
                        counter, name_id_col, counter, counter, counter)
        else:
            result = subqueries
        return result

    def decl_ref_count_subquery(sel_genus, table):
        # only called in inverse, ref count cases
        # table is prefix to refs table name
        id_column = search_genus + '_id'
        sel_columns = 'R.rowid, ref_name_id, ref_theory, ' \
                      'ref_library, ref_count'
        name_col, type_col = 'name_id', 'decl_type'

        def ref_clause(type, lib_term, thy_term, decl_term):
            clause = "SELECT %s FROM %sReferences R " % (sel_columns, table)
            if decl_term:
                clause += "JOIN (%s) S ON (R.%s = S.name_id) " % \
                          (match_suffix(decl_term, "name_id"),
                           name_col)
            where = []
            if type:   # species specified
                where.append(" %s = '%s' " % (type_col, type))
            if thy_term:
                where.append(" R.theory LIKE '%s' " % thy_term)
            if lib_term:
                where.append(" R.library LIKE '%s' " % lib_term)
            if where:
                clause += " WHERE %s " % 'AND'.join(where)
            return clause

        # no closure case for decls and proofs
        subqueries = decl_proof_ref_clauses(ref_clause, inverse, sel_genus)
        return subqueries

    def proof_step_ref_subquery(sel_genus, table):
        # table is prefix to refs table name
        # inverse proof => step is the only possible case
        sel_columns = 'name_id, ref_name_id as dname_id'
        name_col, type_col = 'name_id', 'step_type'

        def ref_clause(type, lib_term, thy_term, decl_term):
            clause = "SELECT %s FROM %sReferences R " % (sel_columns, table)
            if decl_term:
                clause += "JOIN (%s) S ON (R.%s = S.sname_id) " % \
                          (match_suffix(decl_term, "name_id as sname_id"),
                           name_col)
            where = []
            if type:   # species specified
                where.append(" %s = '%s' " % (type_col, type))
            if thy_term:
                where.append(" R.theory LIKE '%s' " % thy_term)
            if lib_term:
                where.append(" R.library LIKE '%s' " % lib_term)
            if where:
                clause += " WHERE %s " % 'AND'.join(where)
            return clause

        # no closure case for steps
        subqueries = decl_proof_ref_clauses(ref_clause, inverse, sel_genus)

        counter = query_index()
        if not subqueries:
            result = ""
        elif ref_count:
            result = subqueries
        else:
            result = "SELECT %s FROM %ss D JOIN (%s) R%s ON " \
                     "(D.name_id = R%s.dname_id) " \
                     % (id_column, table, subqueries, counter, counter)
        return result

    def proof_step_ref_count_subquery(sel_genus, table):
        # only called in inverse, ref count cases
        # table is prefix to refs table name
        id_column = search_genus + '_id'
        sel_columns = 'R.rowid, ref_name_id, ref_count'
        name_col, type_col = 'name_id', 'decl_type'

        def ref_clause(type, lib_term, thy_term, decl_term):
            clause = "SELECT %s FROM %sReferences R " % (sel_columns, table)
            if decl_term:
                clause += "JOIN (%s) S ON (R.%s = S.name_id) " % \
                          (match_suffix(decl_term, "name_id"),
                           name_col)
            where = []
            if type:   # species specified
                where.append(" %s = '%s' " % (type_col, type))
            if thy_term:
                where.append(" R.theory LIKE '%s' " % thy_term)
            if lib_term:
                where.append(" R.library LIKE '%s' " % lib_term)
            if where:
                clause += " WHERE %s " % 'AND'.join(where)
            return clause

        ### should also check matching theory and library
        # no closure case for decls and proofs
        subqueries = decl_proof_ref_clauses(ref_clause, inverse, sel_genus)
        return subqueries


    def mod_ref_subquery(term_list, is_closure):
        if is_closure: table = 'TheoryReferencesClosure'
        else:          table = 'TheoryReferences'
        if inverse:
            sel_columns = 'ref_theory as name, ref_library as library'
            if ref_count:
                sel_columns += ', ref_count'
            name_col, ref_col, type_col, ref_lib = \
                'ref_theory', 'name', 'module_type', 'library'
        else:
            sel_columns = 'name, library'
            name_col, ref_col, type_col, ref_lib = \
                'name', 'ref_theory', 'ref_type', 'ref_library'

        def ref_clause(type, lib_term, thy_term, decl_term):
            # ignore declaration terms
            clause = "SELECT %s FROM %s R " % (sel_columns, table)
            thy_term = thy_term or decl_term    # lib@thy or just 'thy'
            if thy_term:
                where = [ " R.%s LIKE '%s' " % (ref_col, thy_term) ]
            else:
                where = []
            if type:   # species specified
                where.append(" %s = '%s' " % (type_col, type))
            if lib_term:
                where.append(" R.%s LIKE '%s' " % (ref_lib, lib_term))
            if where:
                clause += " WHERE %s " % 'AND'.join(where)
            return clause

        term_tuple_lists = [ zip([type]*len(terms), terms)
                             for genus, type, terms in term_list ]
        if not term_tuple_lists:
            return ""
        all_tuples = reduce(add, term_tuple_lists, [])
        pos_tuples, neg_tuples = polarize_term_pairs(all_tuples)
        
        if neg_tuples and not pos_tuples:
            pos_tuples = [('', '%')]      # need first clause for EXCEPT
        if pos_tuples:
            subqueries = \
                " INTERSECT ".join(
                    [ ref_clause(type, *parse_qualified_term(term))
                      for type, term in pos_tuples ])
        else:
            subqueries = ""
        if neg_tuples:
            subqueries += " EXCEPT " + \
                " EXCEPT ".join(
                    [ ref_clause(type, *parse_qualified_term(term))
                      for type, term in neg_tuples ])
        if subqueries:
            result = subqueries
        else:
            return ""
        return result

    def lib_ref_subquery(term_list, is_closure):
        if is_closure: table = 'TheoryReferencesClosure'
        else:          table = 'TheoryReferences'
        if inverse:
            from_col, to_col = 'ref_library', 'library'
            count_col = ', ref_count' if ref_count else ''
        else:
            from_col, to_col = 'library', 'ref_library'
            count_col = ''
        name_col = from_col + " AS name "
        def ref_where_clause(term):
            clause = " %s %s" % (to_col, term)
            return clause
        all_term_lists = [ terms
                           for genus, type, terms in term_list ]
        all_terms = reduce(add, all_term_lists, [])

        name_where = \
            " AND ".join([ ref_where_clause(match_term(term))
                       for term in all_terms ])
        if name_where:
            result = "SELECT %s, %s %s FROM %s WHERE %s" % \
                     (name_col, to_col, count_col, table, name_where)
        else:
            result = ""
        return result

#    # Reserved for future use:
#     def mod_ref_lib_subquery(term_list, is_closure):
#         counter = query_index()
#         if is_closure: table = 'TheoryReferencesClosure'
#         else:          table = 'TheoryReferences'
#         if inverse:
#             pass  ### raise exception?
#         else:
#             from_col, to_col = 'name', 'ref_library'
#         def ref_where_clause(term):
#             clause = " name %s" % term
#             return clause
#         all_term_lists = [ terms
#                            for genus, type, terms in term_list ]
#         all_terms = reduce(add, all_term_lists, [])

#         name_where = \
#             " AND ".join([ ref_where_clause(match_term(term))
#                        for term in all_terms ])
#         if name_where:
#             mod_join = ("JOIN (SELECT %s, %s FROM %s) TR%s " % \
#                             (from_col, to_col, table, counter)) + \
#                        ("ON (Tvar.name = TR%s.%s) " % (counter, from_col))
#             lib_join = "JOIN (SELECT name FROM Libraries " + \
#                        ("WHERE %s) LR%s " % (name_where, counter)) + \
#                        ("ON (LR%s.name = TR%s.%s)" % (counter, counter, to_col))
#             result = mod_join + lib_join
#         else:
#             return "", ()
#         return result, (counter,)

    if search_genus == 'declaration':
        # only decl => decl and proof => decl refs are possible
        if ref_count:
            ref_subq = [decl_ref_count_subquery('declaration', 'Declaration'),
                        decl_ref_count_subquery('proof', 'Proof')]
            if ref_subq[0]:
                if ref_subq[1]:
                    title, msg = error_messages['too_many_ref_types']
                    raise SearchTermError, (title, msg % '(Declaration, Proof)')
                else:
                    join_ref, ref_prefix = ref_subq[0], 'declaration'
            elif ref_subq[1]:
                join_ref, ref_prefix = ref_subq[1], 'proof'
            else:
                join_ref, ref_prefix = "", 'declaration'
        elif inverse:
            ref_subq = (decl_proof_ref_subquery('declaration', 'Declaration'),
                        decl_proof_ref_subquery('proof', 'Proof'))
            join_ref = " INTERSECT ".join(filter(None, ref_subq))
        else:
            join_ref = decl_proof_ref_subquery('declaration', 'Declaration')

    elif search_genus == 'proof':
        ref_prefix = 'proof'
        # both proof => decl and proof => step refs are possible
        # no inverse or ref_count cases are possible
        if inverse or ref_count:
            join_ref = ""
        else:
            ref_subq = (decl_proof_ref_subquery('declaration', 'Proof'),
                        decl_proof_ref_subquery('step', 'ProofStep'))
            join_ref = " INTERSECT ".join(filter(None, ref_subq))

    elif search_genus == 'step':
        ref_prefix = 'proofstep'
        # only proof => step refs are possible
        if ref_count:
            join_ref = proof_step_ref_count_subquery('proof', 'ProofStep')
        elif inverse:
            join_ref = proof_step_ref_subquery('proof', 'ProofStep')
        else:
            join_ref = ""

    elif search_genus == 'module':
        ### currently only handling module => module refs
        ref_prefix = 'module'
        if ref_genera == ('module',):
            ref_subq = [ mod_ref_subquery(ref_closure_terms[c], c)
                         for c in 0,1 ]
            join_ref = " INTERSECT ".join(filter(None, ref_subq))
        else:
            join_ref = ""

    elif search_genus == 'library':
        ref_prefix = 'library'
        ### currently only handling lib => lib refs
        ref_subq = [ lib_ref_subquery(ref_closure_terms[c], c) for c in 0,1 ]
        join_ref = " INTERSECT ".join(filter(None, ref_subq))

    if ref_count:
        return join_ref, ref_prefix
    else:
        return join_ref


def content_query(q_type, n_terms, r_terms, p_terms, t_terms, *mtimes):
    search_genus = q_type[0]
    subqueries = ""

    if search_genus in ('declaration', 'proof', 'step'):
        if search_genus == 'declaration':
            table, id_column, type_column = \
                'declarations', 'declaration_id', 'decl_type'
            ref_genera_both = ('declaration',), ('declaration', 'proof')
        elif search_genus == 'proof':
            table, id_column, type_column = \
                'proofs', 'proof_id', 'proof_type'
            ref_genera_both = ('declaration', 'step'), ()
        else:   # search_genus = 'step'
            table, id_column, type_column = 'steps', 'step_id', 'step_type'
            ref_genera_both = (), ('proof',)
        ref_subqs = [ any_ref_type_subquery(search_genus, r_terms,
                                            d, ref_genera_both[d])
                      for d in 0,1 ]

        ### following needs at least one positive term
        pos_terms, neg_terms = polarize_terms(n_terms)
        if neg_terms and not pos_terms:
            pos_terms = ['%']
        suffix_name = " INTERSECT ".join(map(match_suffix, pos_terms))
        if neg_terms:
            suffix_name += \
                " EXCEPT " + " EXCEPT ".join(map(match_suffix, neg_terms))
        ref_sq = filter(None, ref_subqs)
        if suffix_name:
            if ref_sq:
                join_name = "SELECT %s from %s D JOIN (%s) S " \
                            "ON (D.name_id = S.name_id) " \
                            % (id_column, table, suffix_name)
            else:
                join_name = "JOIN (%s) S ON (Tvar.name_id = S.name_id) " \
                            % suffix_name
        else:
            join_name = ""
        name_conditions = ""

        subqueries = ""
        subq_count = query_index()
        if ref_sq:
            name_ref_subqs = \
                ' INTERSECT '.join(filter(None, [join_name] + ref_subqs))
            if name_ref_subqs:
                subqueries = 'JOIN (' + name_ref_subqs + \
                             ') R%d ON (Tvar.%s = R%d.%s) ' \
                             % (subq_count, id_column, subq_count, id_column)
        elif join_name:
            subqueries = join_name

        if search_genus == 'step':
            q_base = "SELECT DISTINCT 0, '', '', 1, Tvar.%s " \
                     "FROM %s Tvar " % (id_column, table)
        else:
            q_base = "SELECT DISTINCT T.file_id, F.rel_path, T.name, " \
                     "1, Tvar.%s FROM %s Tvar " \
                     "JOIN Theories T ON (Tvar.theory_id = T.theory_id) " \
                     "JOIN FileDescriptors F ON (T.file_id = F.file_id) " \
                     % (id_column, table)

    elif search_genus in ('library', 'module'):
        # currently allow only refs within same genus
        name_conditions = "AND".join([ " Tvar.name %s " % match_term(term)
                                       for term in n_terms ])
        join_name = ""
        if search_genus == 'library':
            table, id_column, type_column = \
                'libraries', 'library_id', ''   # t_terms null for libs
        else:
            table, id_column, type_column = \
                'theories', 'theory_id', 'module_type'
        subqs = filter(None, [ any_ref_type_subquery(search_genus, r_terms,
                                                     d, (search_genus,))
                               for d in 0,1 ] )
        ref_subqs = ' INTERSECT '.join(subqs)
        if ref_subqs:
            subq_count = query_index()
            lib_name_cond = '' if search_genus == 'library' else \
                            'AND Tvar.library = R%d.library' % subq_count
            subqueries = 'JOIN (' + ref_subqs + \
                         ') R%d ON (Tvar.name = R%d.name %s) ' \
                         % (subq_count, subq_count, lib_name_cond)
        q_base = "SELECT DISTINCT Tvar.file_id, F.rel_path, " \
                 "Tvar.name, 1, Tvar.%s  FROM %s Tvar " \
                 "JOIN FileDescriptors F ON (Tvar.file_id = F.file_id) " \
                 % (id_column, table)

    type_conditions = \
        " OR ".join([ "Tvar.%s %s" % (type_column, match_term(term, 1))
                    for term in t_terms ])
    if len(t_terms) > 1:
        # parens needed for disjunctive expression
        type_conditions = "(%s) " % type_conditions

    all_conditions = \
        " AND ".join(filter(None, (name_conditions, '', type_conditions,
                                   path_name_where(search_genus,
                                                   p_terms, '', *mtimes))))
    if all_conditions: conditions = ' WHERE %s ' % all_conditions
    else:              conditions = ''
    query = (q_base + subqueries + conditions).replace('Tvar', 'X')
##            + " order by mod_time desc"
    return query


def ref_count_query(q_type, n_terms, r_terms, p_terms, t_terms, *mtimes):
    search_genus = q_type[0]
    counter = query_index()
    subqueries = ""
    if search_genus in ('declaration', 'proof', 'step'):
        if search_genus == 'declaration':
            table, id_column, type_column = \
                'declarations', 'declaration_id', 'decl_type'
            ref_columns = 'R.rowid, ref_name_id, ref_theory, ' \
                          'ref_library, ref_count'
            ref_genera_inv = ('declaration', 'proof')
        elif search_genus == 'step':
            table, id_column, type_column = \
                'steps', 'step_id', 'step_type'
            ref_columns = 'R.rowid, ref_name_id, ref_count'
            ref_genera_inv = ('proof',)
        else:    # proofs cannot be ref targets
            ref_genera_inv = ()
        ref_subqs, ref_prefix = any_ref_type_subquery(search_genus, r_terms,
                                                     1, ref_genera_inv, 1)
        rvar = gvar = 'R%s' % counter

        ### following needs at least one positive term
        pos_terms, neg_terms = polarize_terms(n_terms)
        if neg_terms and not pos_terms:
            pos_terms = ['%']
        suffix_name = " INTERSECT ".join(map(match_suffix, pos_terms))
        if neg_terms:
            suffix_name += \
                " EXCEPT " + " EXCEPT ".join(map(match_suffix, neg_terms))
        if suffix_name:
            join_name = "SELECT %s from %sReferences R JOIN (%s) S " \
                        "ON (R.ref_name_id = S.name_id) " \
                        % (ref_columns, ref_prefix, suffix_name)
        else:
            join_name = ""
        name_conditions = ""

        name_ref_subqs = \
            ' INTERSECT '.join(filter(None, [join_name, ref_subqs]))
        if name_ref_subqs:
            if search_genus == 'step':
                subqueries = "JOIN (%s) %s ON (%s.ref_name_id = Tvar.name_id) " \
                             % (name_ref_subqs, rvar, rvar)
            else:
                subqueries = "JOIN (%s) %s ON (%s.ref_name_id = Tvar.name_id " \
                             "and %s.ref_theory = Tvar.theory " \
                             "and %s.ref_library = Tvar.library) " \
                             % (name_ref_subqs, rvar, rvar, rvar, rvar)
        else:
            subqueries = ""

        if search_genus == 'step':
            q_base = "SELECT DISTINCT 0, '', '', " \
                     "sum(R%s.ref_count), Tvar.%s " \
                     "FROM %s Tvar " % (counter, id_column, table)
        else:
            q_base = "SELECT DISTINCT T.file_id, F.rel_path, T.name, " \
                     "sum(R%s.ref_count), Tvar.%s FROM %s Tvar " \
                     "JOIN Theories T ON (Tvar.theory_id = T.theory_id) " \
                     "JOIN FileDescriptors F ON (T.file_id = F.file_id) " \
                     % (counter, id_column, table)
        closing = " GROUP BY Tvar.%s ORDER BY sum(%s.ref_count) DESC " \
                  % (id_column, rvar)

    elif search_genus in ('library', 'module'):
        # currently allow only refs within same genus

        name_conditions = "AND".join([ " Tvar.name %s " % match_term(term)
                                       for term in n_terms ])
        join_name = ""
        if search_genus == 'library':
            table, id_column, type_column = \
                'libraries', 'library_id', ''   # t_terms null for libs
            ref_genera_inv, Rvar, Gvar = ('library',), 'TR', 'TR'
        else:
            table, id_column, type_column = \
                'theories', 'theory_id', 'module_type'
            ref_genera_inv, Rvar, Gvar = ('module',), 'R', 'R'
        subqueries, ref_prefix = any_ref_type_subquery(search_genus, r_terms,
                                                      1, ref_genera_inv, 1)
        rvar, gvar = Rvar + str(counter), Gvar + str(counter)
        if subqueries:
            lib_name_cond = '' if search_genus == 'library' else \
                            'AND Tvar.library = %s.library' % rvar
            subqueries = 'JOIN (' + subqueries + \
                         ') %s ON (Tvar.name = %s.name %s) ' \
                         % (rvar, rvar, lib_name_cond)
        q_base = "SELECT DISTINCT Tvar.file_id, F.rel_path, Tvar.name, " \
                 "sum(%s.ref_count), Tvar.%s FROM %s Tvar " \
                 "JOIN FileDescriptors F ON (Tvar.file_id = F.file_id) " \
                 % (rvar, id_column, table)
        closing = " GROUP BY %s.name ORDER BY sum(%s.ref_count) DESC " \
                  % (rvar, rvar)

    type_conditions = \
        " OR ".join([ "Tvar.%s %s" % (type_column, match_term(term, 1))
                    for term in t_terms ])
    if len(t_terms) > 1:
        # parens needed for disjunctive expression
        type_conditions = "(%s) " % type_conditions

    all_conditions = \
        " AND ".join(filter(None, (name_conditions, '', type_conditions,
                                   path_name_where(search_genus,
                                                   p_terms, '', *mtimes))))
    if all_conditions: conditions = ' WHERE %s ' % all_conditions
    else:              conditions = ''
    query = (q_base + subqueries + conditions).replace('Tvar', 'X') \
            + closing.replace('Tvar', 'X')
    return query


# def path_name_query(p_terms, t_terms, *mtimes):
#     where = path_name_where('path', p_terms, t_terms, *mtimes)
#     if where: where_clause = 'WHERE ' + where
#     else:     where_clause = ''
#     return "SELECT file_id, rel_path, file_type, 1, NULL" \
#            " FROM FileDescriptors " \
#            + where_clause + " order by mod_time desc"


# Map relative paths from query results into absolute paths.
# Paths are assumed to occur in second component of each row.

def rel_to_abs_paths(results):
    tried_libs = []
    path_list = []
    for t in results:
        # library result rows lack a theory file part, so thy is ''
        path_type, d, thy = parse_theory_path(t[1])
        if path_type != 'rel':
            path_list.append(t)     # generated/prelude (keep in relative form)
            continue
        dir_lib = all_lib_dirs.get(d, '')
        if not dir_lib and d not in tried_libs:
            find_library_dirs(d)    # check if library has been indexed lately
            tried_libs.append(d)    # track attempts to limit checking
            dir_lib = all_lib_dirs.get(d, '')

        # copy results and change to absolute paths
        if thy == '':          # library result row
            abs_path = dir_lib or t[1]    # keep rel path if abs paths missing
        elif dir_lib:
            abs_path = os.path.join(dir_lib, thy)    # normal theory file
        else:
            abs_path = t[1]    # keep original path if directory not located
#        # tuple() required below for older versions of pysqlite
#        # (type returned was 'instance')
#        path_list.append( (t[0], abs_path) + tuple(t[2:]) )
        path_list.append( (t[0], abs_path) + t[2:] )
    return path_list


# Perform a Hypatheon query by parsing and validating the user's search terms,
# then formulating suitable SQL queries, and finally, submitting the
# SQL queries to the database.  If supplied, the error_fn accepts two
# string arguments, a title/category and an error message.  If not supplied,
# error messages are directed to sys.stderr.
# Returns a 4-tuple of values:
#   - 5-tuple of parsed query strings
#   - SQL query created for submission
#   - list of result 5-tuples: (file_id, rel_path, module_name, rank, decl_id)
#          ### or (path results) : (file_id, rel_path, module_name, 1, None)
#          ### path results currently disabled; might be a future option
#   - run time of query (sec)
# or (None, None, None, None) if null or invalid query.
# Assume type terms are complete words/strings (anchored matching).

def perform_query(query_strings, q_type, query_log_file=None, error_fn=None):
    def eval_query(query_terms, sql_query, collec_ids):
        if explain_log:
            emit_log_entry(explain_log,
                           "======== Terms: %s ========\n" % str(query_strings))
        if query_log_file:
            emit_log_entry(query_log_file,
                           """Query terms: %s\nSQL query: %s\n""" %
                           (query_strings, sql_query))
        start = time.time()
        results = query_some(sql_query, collec_ids)
        q_time = (time.time() - start) * 1000
        if query_log_file:
            emit_log_entry(query_log_file,
                           "Found %s items in %.1f msec.\n" %
                           (len(results), q_time))
        # major queries are logged here
        append_query_explanation(sql_query, q_time,
                                 db_cursor[collec_ids[0]], {}, results, 1)
        return (query_terms, sql_query, results, q_time)
    mtimes = ()
    query_index(1)   # reset counter for SQL join names
    # (name terms, ref terms, path terms, item type)
    n_query, r_query, p_query, t_query = query_strings
    if q_type[2]:
        title, msg = error_messages['ignored_type_terms']
        msg = msg % q_type[2]
        if error_fn:
            error_fn(title, msg)
        else:
            print >> sys.stderr, wrap_string('[%s] %s' % (title, msg))

    try:
        collec_ids, p_rest = parse_collection_names(p_query)
        p_terms = parse_query_terms(p_rest, 0)[0]  # 1)  ### no regexp now
        # type terms are left anchored
        t_terms = q_type[1]
        n_terms = parse_query_terms(n_query)[0]
        # find normal and inverse typed refs, and ref terms
        r_terms_all = parse_ref_terms(r_query, q_type[0])
        if q_type[0] in main_item_types and \
                r_terms_all[-1] == ref_count_delimiter:
            typed_r_terms, r_terms = r_terms_all[:2]
            sql_query = ref_count_query(q_type, n_terms, typed_r_terms,
                                        p_terms, t_terms, *mtimes)
            return eval_query((n_terms, r_terms, p_terms, t_terms, mtimes),
                              sql_query, collec_ids)
        elif q_type[0] in main_item_types:
            typed_r_terms, r_terms = r_terms_all[:2]
            sql_query = content_query(q_type, n_terms, typed_r_terms,
                                      p_terms, t_terms, *mtimes)
            return eval_query((n_terms, r_terms, p_terms, t_terms, mtimes),
                              sql_query, collec_ids)
        elif q_type[0] == 'path':   # p_query or t_query or mtimes:
            ### path queries currently disabled
            # sql_query = path_name_query(p_terms, t_terms, *mtimes)
            # return eval_query(([], [], p_terms, t_terms, mtimes),
            #                   sql_query, collec_ids)
            return (None, None, None, None)
        else:
            return (None, None, None, None)
    except SearchTermError, err_tuple:
        if error_fn:
            error_fn(*err_tuple.args)
            return (None, None, None, None)
        else:
            print >> sys.stderr, wrap_string('[%s] %s' % err_tuple.args)
            raise SearchTermError


error_messages = \
    {
     'bad_dates' :
     ('Search term processing',
      "The date values have been improperly formed. Use the format "
      "y/m/d/h/m/s (numeric values truncated at any point)." ) ,

     'terms_malformed' :
     ('Search term processing',
      "The search terms are malformed somehow. Check for unbalanced "
      "quotes or misplaced escape characters." ) ,

     'ref_terms_malformed' :
     ('Search term processing',
      "The search terms are malformed somehow. Check for unbalanced "
      "quotes or misplaced reference types." ) ,

     'bad_ref_type' :
     ('Search term processing',
      "The reference type '%s' is not a prefix of any valid type." ) ,

     'unimplemented_ref_type_forward' :
     ('Search term processing',
      "The combination of search type (%s) and reference type (%s) is not "
      "supported." ) ,

     'unimplemented_ref_type_inverse' :
     ('Search term processing',
      "This combination of referring type (%s) and search type (%s) is not "
      "supported." ) ,

     'ignored_type_terms' :
     ('Search term processing',
      "The type search terms %s will be ignored." ) ,

     'ignored_path_terms' :
     ('Search term processing',
      "The path search terms %s will be ignored." ) ,

     'no_regexp_terms' :
     ('Search term processing',
      "Content search terms may not include regular expressions." ) ,

     'invalid_collection' :
     ('Search term processing',
      "A nonexistent collection name appears in the Path search terms." ) ,

     'bad_path_terms' :
     ('Search term processing',
      "The path search terms have been improperly formed." ) ,

     'bad_content_terms' :
     ('Search term processing',
      "The content search terms have been improperly formed." ) ,

     'too_many_ref_types' :
     ('Search term processing',
      "Cannot have two referring types %s in a ref count query." ) ,

     'no_ref_count_types' :
     ('Search term processing',
      "No referring types found in the Refs terms are suitable "
      "for a ref count query." ) ,
     }
