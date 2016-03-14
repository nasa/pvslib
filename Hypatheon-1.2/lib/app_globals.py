
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Common definitions for Hypatheon application
# (used by client, indexer and all utilities)

import os, sys, time, glob, string, shutil, re
import subprocess
from operator import add, and_
from StringIO import StringIO
from traceback import print_exc

from app_config import *

class UserError(Exception):  pass
class FalseStart(Exception): pass
class OffNominal(Exception): pass

class CommandFailure(Exception): pass
class CommandTimeout(Exception): pass
class CommandAbort(Exception): pass

class ConnectionFailure(Exception):  pass
class DatabaseError(Exception):  pass
class OperationalError(Exception):  pass

class SearchTermError(Exception):  pass

class CancelProcess(Exception):  pass

class DeletedFileError(Exception):  pass

class DenialOfServiceException(Exception):
    """Exception to alert of possible denial of service attack."""
    pass
class ArchiveError(Exception):
    """Exception raised if file cannot be unpacked, or is missing files."""
    pass
class ExtractionError(Exception):
    """Exception raised if PVS extraction fails."""
    pass
class InsertionError(Exception):
    """Exception raised if database insertion fails."""
    pass
class DeletionError(Exception):
    """Exception raised if database deletion fails."""
    pass

def reraise_with_trace(excep, msg):
    trace = StringIO()
    print_exc(20, trace)
    new_msg = '***** Propagating exception %s.\n\n%s\n\n%s\n' \
        % (excep, trace.getvalue(), msg)
    raise excep, new_msg


# ---------- #

# Globally accessible values are collected in these variables:

app_state = {}

startup_actions = []

# ---------- Global constants ---------- #

indexing_log_name  = 'indexing_log'
indexing_err_log   = 'index_err_log'
db_ops_log_name    = 'db_ops_log'
#db_ops_log_name    = 'ops_log'

hypatheon_dir = os.environ['HYPATHEON']
home_dir      = os.environ.get('HOME')
pvs_path      = os.environ.get('PVSPATH', '')

# Might be running without a PVS installation:

pvs_lib_dir   = pvs_path and os.path.join(pvs_path, 'lib')
pvs_script    = pvs_path and os.path.join(pvs_path, 'pvs')

hypatheon_subdirs = ('bin', 'config', 'data', 'index', 'lib', 'log',
                     'pvs', 'tmp',)

bin_dir, config_dir, data_dir, index_dir, lib_dir, log_dir, \
         pvs_conn_dir, tmp_dir = \
    [ os.path.join(hypatheon_dir, d) for d in hypatheon_subdirs ]

db_glob_pattern   = 'hyp-*.sdb'
default_coll_name = 'private'
default_db_path = os.path.join(data_dir, 'hyp-%s.sdb' % default_coll_name)
empty_db_path   = os.path.join(data_dir, 'base', 'empty.sdb')

db_regexp_pattern = re.compile('hyp-([^-]+)(?:-(.*))?\.sdb\Z')

identity_fn     = lambda arg: arg
null_proc       = lambda *args: None
null_string_fn  = lambda *args: ''

progress_tag = '<<<progress>>>'   # for progress reporting protocol over pipes
len_progress_tag = len(progress_tag)

any_file_type   = '.*'

spawn_bin = os.path.join(bin_dir, 'spawn_with_timeout')

compression_types = (('.gz', 'gunzip'), ('.bz2', 'bunzip2'))


# PVS declaration and module types

main_item_types = ['library', 'module', 'declaration', 'proof', 'step']
declaration_types = [ 'formula', 'function', 'constant',
                      'judgement', 'type', 'tcc', ]
                    # might want others later
proof_types =    [ 'f_proof', 'j_proof', 't_proof', ]
step_types =     [ 'primitive_rule', 'defined_rule', 'strategy', ]
module_types =   [ 'theory', 'datatype' ]
non_decl_types = ['library', 'module', 'proof', 'step'] + \
                 module_types + proof_types + step_types

def indented_items(items):
    return [ '    %s' % item for item in items ]
def cap_indented(items):
    return [ '    %s' % item.capitalize() for item in items ]

all_item_types = ['library', 'module'] + module_types + \
                 ['declaration'] + declaration_types + \
                 ['proof'] + proof_types + \
                 ['step']  + step_types

indented_item_types = ['library', 'module'] + indented_items(module_types) + \
                      ['declaration'] + indented_items(declaration_types) + \
                      ['proof'] + indented_items(proof_types) + \
                      ['step']  + indented_items(step_types)

cap_item_types = ['Library', 'Module'] + cap_indented(module_types) + \
                 ['Declaration'] + cap_indented(declaration_types) + \
                 ['Proof'] + cap_indented(proof_types) + \
                 ['Step']  + cap_indented(step_types)

# Place declaration last in list below because it's the default query type.

type_hierarchy = [['library'],
                  ['module'] + module_types,
                  ['proof'] + proof_types,
                  ['step']  + step_types,
                  ['declaration'] + declaration_types,
                  ]

type_genus, type_species = {}, {}
for genus in type_hierarchy:
    gname = genus[0]
    type_genus[gname]   = gname
    type_species[gname] = ''
    for species in genus[1:] :
        type_genus[species]   = gname
        type_species[species] = species

status_display_types = ('Collection name:', 'Collection version:',
                        'PVS version:',
                        'Libraries:',
                        'Modules:',
                        '    Theories:', '    Datatypes:',
                        'Declarations:',
                        '    Formulas:', '    Functions:', '    Constants:',
                        '    Judgements:', '    Types:', '    TCCs:',
                        'Proofs:',
                        '    F_proofs:', '    J_proofs:', '    T_proofs:',
                        'Steps:',
                        '    Primitive_rules:', '    Defined_rules:',
                        '    Strategies:',
                        'Paths indexed:', 'Database size (MB):',
                        )


# ---------- Configuration classes ---------- #

from ConfigParser import ConfigParser

# Introduce a slightly enhanced ConfigParser that allows comments at
# ends of lines.  Strip comments before applying 'get' methods.

class ConfigParserCommentless(ConfigParser):

    def __init__(self, *args):
        ConfigParser.__init__(self, *args)

    def get(self, *args, **kargs):
        value = ConfigParser.get(self, *args, **kargs)
        return value.split('#')[0].strip()

    def getint(self, *args, **kargs):
        return int(self.get(*args, **kargs))


# ---------- PVS library lookup ---------- #

pvs_distrib_libs = ('prelude', 'finite_sets', 'bitvectors')
core_libs = pvs_lib_dir
PVS_LIBRARY_PATH = os.environ.get('PVS_LIBRARY_PATH', '')
pvs_library_path = PVS_LIBRARY_PATH.split(':') if PVS_LIBRARY_PATH else []
# Need to expand ~ and ~user constructions in paths.
pvs_library_path = [ os.path.expanduser(p) for p in pvs_library_path ]
if core_libs and core_libs not in pvs_library_path:
    all_lib_paths = pvs_library_path + [core_libs]
else:
    all_lib_paths = pvs_library_path

# Each library collection is stored in its own SQLite database file.
# Find all the database files in the library directories.
# Names are of the form hyp-*.sdb or hyp-*-<version>.sdb.
# When multiple files having the same collection name are found,
# only the newest will be active and the other are marked superseded.

def find_collections():
    compression_items = \
        [ (db_glob_pattern + c[0], c[1]) for c in compression_types ]
    coll_dict = {}
    for dir in all_lib_paths + [data_dir]:
        for patt, cmd in compression_items:
            # find all database files in compressed form
            paths = glob.glob(os.path.join(dir, patt))
            for p in paths:
                subprocess.call('%s "%s"' % (cmd, p), shell=True)  # uncompress
                startup_actions.append("Uncompressed the database file '%s'" % p)
        collec_paths = glob.glob(os.path.join(dir, db_glob_pattern))
        for db_path in collec_paths:
            base = os.path.basename(db_path)
            date_time = os.path.getmtime(db_path)
            # following must have a match
            coll, version = db_regexp_pattern.match(base).groups()
            entry = (date_time, db_path, version or '')
            if coll in coll_dict:
                coll_dict[coll].append(entry)
            else:
                coll_dict[coll] = [entry]
    active = []
    for coll, coll_files in coll_dict.items():
        coll_files.sort()
        newest = coll_files[-1]
        active.append( (coll, newest[1],
                        newest[2]) )       # collection name, path, version
        for dt, path, vers in coll_files[:-1]:
            superseded_dbs.append(
                (coll, dt, path, vers) )  # coll name, date_time, path, version
    return active

#            coll_dict[(coll, version or '')] = db_path
#    return [ (coll[0], path, coll[1]) for coll, path in coll_dict.items() ]

superseded_dbs = []
collections = find_collections()
collections.sort()


# Look up full path for a library.

all_lib_dirs = {'prelude': 'prelude'}       # prelude is a virtual directory

def find_library_dirs(*libs):
    for lib in libs:
        if lib in all_lib_dirs: continue
        for p in all_lib_paths:
            dir_lib = glob.glob(os.path.join(p, lib))
            if dir_lib:
                all_lib_dirs[lib] = dir_lib[0]
                break

# Find all (potential) libraries on directories of all_lib_paths.
# Optionally suppress check for top.pvs membership.

def collect_library_names(every_dir=0):
    lib_names = []
    for d in all_lib_paths:
        names = [ os.path.basename(n) for n in glob.glob('%s/*' % d)
                  if os.path.isdir(n) and not os.path.islink(n) and
                     (every_dir or 'top.pvs' in os.listdir(n)) ]
        names.sort()
        lib_names.append( (d, names) )
    return lib_names


# Identify those theories that should be excluded from indexing.

def unindexed_files(lib_name, thy_names):
    if lib_name == 'prelude': return []
    actuals = list(thy_names) + ['top']
    find_library_dirs(lib_name)
    lib_path = all_lib_dirs.get(lib_name, '')
    theories = [ os.path.splitext(os.path.basename(p))[0]
                 for p in glob.glob(os.path.join(lib_path, '*.pvs')) ]
    return [ thy for thy in theories
             if thy not in actuals and
                    not re.search('.+_adt.*', thy) and
                    not re.search('.+_codt.*', thy) ]


# For standalone mode, need to run PVS script to get version info.

def get_pvs_version():
    pvs_version = app_state.get('pvs_version')
    if pvs_version: return pvs_version
    if not pvs_script: return '?'
    try:
        version_cmd = '"%s" -version 2> /dev/null' % pvs_script
        version = subprocess.Popen(version_cmd, shell=True,
                                   stdout=subprocess.PIPE).stdout.read()
        start = version.index('PVS Version')
        try:
            pvs_version = version[start:].split()[2]
            app_state['pvs_version'] = pvs_version
        except ValueError:
            pvs_version = '?'
        return pvs_version
    except:
        return '?'


# ---------- Logging services ---------- #

repetition_state = {}    # {event_name : [prev_entry, count]}

# Emit a new entry to a log file with optional annotations for event durations.
# Another option keeps track of previous entries and omits a log entry if
# it repeats the previous one.

def emit_log_entry(log_file, entry_text, start=None, stop=None,
                   omit_rep_event=None):
    if omit_rep_event:
        rep_state = repetition_state.get(omit_rep_event, ['', 0])
        prev_entry, rep_count = rep_state
        if entry_text == prev_entry:
            rep_state[1] += 1    # matches previous entry of this type
            return
    if start == None:
       start = time.time()
       num_text = '--'
    else:
       if stop == None: stop = time.time()
       duration = stop - start
       if duration >= 1.0:
          num_text = '-- %6.1f  sec --' % duration
       else:
          num_text = '-- %6d usec --' % int(duration * 1000000)
    time_str = time.strftime('%b %d %H:%M:%S', time.localtime(start))
    if omit_rep_event:
        # Current entry different from previous one
        if rep_count > 0:
            debug_log(log_file, time_str, '--',
                      "*** Previous '%s' entry was repeated %d times. ***\n"
                      % (omit_rep_event, rep_count))
        repetition_state[omit_rep_event] = [entry_text, 0]
    debug_log(log_file, time_str, num_text, entry_text)

def debug_log(log_file, *values):
    print >> log_file, \
          reduce(add, [ ' %s' % str(v) for v in values ], '')
    log_file.flush()


### Might not need append mode:

ops_log_file = open(os.path.join(log_dir, db_ops_log_name), 'a')
#ops_log_file = open(os.path.join(log_dir, 'ops_log'), 'a')


# ---------- Utility procedures ---------- #

_temp_file_template = os.path.join(tmp_dir, '%s_%%s' % os.getpid())
_temp_index = 0

def new_temp_file_name():
    global _temp_index
    _temp_index += 1
    return _temp_file_template % _temp_index

def version_tuple(version):
    return tuple(map(int, version.split('.')))

def create_empty_db():
    subprocess.call('cd "%s"; build/create_empty_db data/base/empty.sdb'
                    % hypatheon_dir, shell=True)

# Distinguish cases 'generated/lib/thy' and 'lib/thy' from absolute paths.

def parse_theory_path(path):
    dir, base = os.path.split(path)
    if not dir:
        return ('rel', base, '')     # library name only
    if os.path.isabs(dir):
        return ('abs', dir, base)
    # relative paths could be unexpanded; will become absolute later
    # alternatively, they could be for generated or prelude theories
    gen, lib = os.path.split(dir)
    if lib == 'prelude' or gen == 'generated':
        return (gen, lib, base)    # gen = '' if not generated
    return ('rel', dir, base)      # will become abs after expansion


# Run a shell command and return its output.
# Provide the number of output lines expected.

def os_command_output(cmd, nlines=1):
    pipe = subprocess.Popen(cmd, shell=True, bufsize=-1,
                            stdout=subprocess.PIPE).stdout
    result = ''.join( [ pipe.readline() for i in range(nlines) ] )
    pipe.close()
    return result


def quote_quote(text):
    return text.replace("'", "''")

def unique_list(seq):
    result = []
    for item in seq:
        if item not in result: result.append(item)
    return result

# Transpose a list of lists.  Tuples are converted to lists.
# Assume uniform-length rows and columns.

def transpose_lists(lol):
    result = [ [] for c in lol[0] ]  # each null list needs to be fresh
    for row in lol:
        for val, new_col in zip(row, result):
            new_col.append(val)
    return result


def two_digit_min(value, divisor):
    scaled = value / divisor
    if scaled < 10.0:
        return str(round(scaled, 1))
    else:
        return str(int(round(scaled)))

def approx_size(size, align=0):
    if size < 1000:
        if align:
            return '%d ' % size
        else:
            return '%d' % size
    elif size < 999500:
        return '%sK' % two_digit_min(size, 1000.0)
    elif size < 999500000:
        return '%sM' % two_digit_min(size, 1000000.0)
    else:
        return '%sG' % two_digit_min(size, 1000000000.0)


# Convert number of seconds into string approximation (e.g., "3.2 days").

def approx_duration(duration):
    # thresholds are 0.95 * sec_per_unit
    if duration > 29979079:
        return '%s years' % two_digit_min(duration, 31556926.0)
    elif duration > 82080:
        return '%s days' % two_digit_min(duration, 86400.0)
    elif duration > 3420:
        return '%s hours' % two_digit_min(duration, 3600.0)
    else:
        return '%s minutes' % two_digit_min(duration, 60.0)

    
# Find all positions where capitalizations occur within a string and
# insert a blank before the capital letter.  Any transition from a
# non-upper-case letter to an upper-case letter is considered a
# capitalization site.  Example: 'getNextItem' ==> 'get Next Item'

def separate_capitalized(s):
    return ''.join([ ' '[ : int(prev.isupper() < next.isupper())] + next
                     for prev, next in zip('A' + s[:-1], s) ])

#def capital_split(s):
#    return [ ' '[ : int(prev.isupper() < next.isupper())] + next
#                     for prev, next in zip('A' + s[:-1], s) ]

# Pattern for splitting a string into alphanumeric substrings.
# '_' excluded from alphanumeric char set.

alphanum_split_pattern = re.compile('[\W_]+', re.U)

ident_pattern = re.compile('[^:([{ \n]+')

# Find declaration name as leading identifier.
# Filter out VAR declarations.
decl_name_pattern = \
    re.compile(
        '\s*([\w?]+)(?:\(.+\))?(?:\[.+\])?(?:\{.+\})?\s*:(?!\s*var(?:\W+|\Z))',
        re.IGNORECASE)
# re.compile('\s*([^:([{ \n]+)')

regexp_metachars = '*+?(|)-^$.!:{}[],='

# Check if (unescaped) regexp metachars appear in a string.

def has_regexp_metachars(str):
    prev_c = ' '
    for c in str:
        if c in regexp_metachars and prev_c != '\\': return 1
        else: prev_c = c
    return 0

# Escape all regexp metachars in a string.

def regexp_escape(str):
    result = str
    for c in unique_list(str):
        if c in regexp_metachars:
            result = result.replace(c, r'\%s' % c)
    return result


# Wrap string into text lines of max width, inserting newlines as needed.
# Optionally return a list of lines without newlines.
# Newlines within the string are overridden by wrapping.

def wrap_string(text, width=70, return_list=0):
    words = text.split()

    result = []
    line, total = [], 0
    for w in words:
        if total + len(w) >= width:
            if line: result.append(' '.join(line))
            line, total = [w], len(w)
        else:
            line.append(w)
            total += len(w) + 1
    if line: result.append(' '.join(line))
    if return_list: return result
    else:           return '\n'.join(result)
    

# Limit runs of blank lines to length one.

def purge_extra_blank_lines(text):
    lines = text.splitlines()
    prev_line = ''
    result = []
    for line in lines:
        if line == prev_line == '': continue
        result.append(line)
        prev_line = line
    result.append('\n')
    return '\n'.join(result)


def read_text_file(path_name, as_lines=0, max_size=-1):
    try:
        file = open(path_name)
        if as_lines: contents = file.readlines(max_size)
        else:        contents = file.read(max_size)
        file.close()
    except:            # file permission or other error
        contents = ''  ### add logging???
        try:
            file.close()
        except:
            pass
    return contents

# If supplied, error_fn accepts two string arguments, a title/category and an
# error message.  If not supplied, error messages are directed to sys.stderr.

def write_text_file(content, path_name, as_lines=0, error_fn=None):
    try:
        file = open(path_name, 'w')
        if as_lines: file.writelines(content)
        else:        file.write(content)
        file.close()
    except Exception, exc_obj:
        msg = 'Exception: %s' % ' ; '.join(map(str, exc_obj.args))
        if error_fn: error_fn('Error on File Operation', msg)
        else:        print >> sys.stderr, msg 
        try: file.close()
        except: pass


def strip_neg(term):
    if term[0] in '-!': return term[1:]
    else:               return term

def split_and_pad_terms(query_string):
    terms = query_string.split(';')
    return [ t.strip() for t in terms ] + [''] * (4 - len(terms))
