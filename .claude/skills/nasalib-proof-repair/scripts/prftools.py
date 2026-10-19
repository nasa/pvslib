#!/usr/bin/env python3
"""Edit PVS .prf files by structure (never by line numbers).

A .prf file is (|theory| ENTRY ...). An ENTRY is (|formula| DEFAULT-INDEX PROOF ...).
A PROOF is (|formula-N| DESC DATE SCRIPT REFS DP). A SCRIPT is a proof tree in the
editable format: ("label" STEP (CHILD ...) NIL), where each CHILD is a node of the
same form. A node with one child continues a chain: the child has the same label.
A node with several children is a branching step: the children are labeled "1", "2", ...

Usage:
  prftools.py list FILE                       formula names, in file order
  prftools.py get FILE FORMULA                default proof script, on one line
  prftools.py show FILE FORMULA               outline of the default proof script
  prftools.py set FILE FORMULA SCRIPT         set the default proof script
                                              (adds an entry at the end if there is none)
  prftools.py build                           read a Python list from stdin, print a script
  prftools.py nodes FILE FORMULA RULE         list the nodes whose step matches RULE
                                              (a regular expression, whitespace-insensitive)
  prftools.py set-children FILE FORMULA RULE K CHILDREN
                                              replace the children of the K-th node that
                                              matches RULE (K starts at 0) by CHILDREN, a
                                              Python list of branches (see build)
  prftools.py merge BASE OTHER OUT [--skip REGEX]
                                              write BASE plus the entries of OTHER that are
                                              not in BASE (except names that match REGEX)

The build format: a list of steps. The last element of the list can be a list of
branches, where each branch is again a list of steps. Example:
  ['(SKEEP)', '(CASE "x = 0")', [['(ASSERT)'], ['(EXPAND "f")', '(GROUND)']]]
Labels are computed: the top chain is labeled "", and the branches "1", "2", ...

The script only changes the default proof of a formula. Keep a copy of the .prf file
before each edit: PVS can rewrite the file when proveit saves proofs.
"""
import re
import sys


# ---------------------------------------------------------------- s-expressions

def sexp_end(t, i):
    """Index after the s-expression that starts at t[i] == '('."""
    depth = 0
    n = len(t)
    while i < n:
        c = t[i]
        if c == '"':
            i += 1
            while t[i] != '"':
                if t[i] == '\\':
                    i += 1
                i += 1
        elif c == '|':
            # A |...| symbol; a backslash escapes the next character (|\|-| is the symbol |-)
            i += 1
            while t[i] != '|':
                if t[i] == '\\':
                    i += 1
                i += 1
        elif c == '(':
            depth += 1
        elif c == ')':
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    raise ValueError('unbalanced s-expression')


def children(t, s, e):
    """(start, end) of the top-level elements of the list t[s:e]."""
    out = []
    i = s + 1
    while i < e - 1:
        c = t[i]
        if c == '(':
            j = sexp_end(t, i)
            out.append((i, j))
            i = j
        elif c == '"':
            j = i + 1
            while t[j] != '"':
                if t[j] == '\\':
                    j += 1
                j += 1
            out.append((i, j + 1))
            i = j + 1
        elif c == '|':
            j = i + 1
            while t[j] != '|':
                if t[j] == '\\':
                    j += 1
                j += 1
            out.append((i, j + 1))
            i = j + 1
        elif c in ' \n\t\r':
            i += 1
        else:
            j = i
            while t[j] not in ' \n\t\r()':
                j += 1
            out.append((i, j))
            i = j
    return out


def norm(s):
    return ' '.join(s.split())


# ---------------------------------------------------------------- .prf entries

def read(path):
    return open(path, encoding='latin-1').read()


def write(path, t):
    open(path, 'w', encoding='latin-1').write(t)


def entries(t):
    """List of (name, start, end) of the entries of a .prf text."""
    s = t.index('(')
    top = children(t, s, sexp_end(t, s))
    out = []
    for x, y in top[1:]:
        m = re.match(r'\(\|?([^|\s()]+)\|?', t[x:y])
        out.append((m.group(1), x, y))
    return out


def find_entry(t, name):
    for n, x, y in entries(t):
        if n == name:
            return x, y
    return None


def default_script_span(t, name):
    """(start, end) of the default proof script of formula name."""
    span = find_entry(t, name)
    if span is None:
        return None
    x, y = span
    parts = children(t, x, y)
    idx = int(t[parts[1][0]:parts[1][1]])
    proof = parts[2 + idx]
    pparts = children(t, *proof)
    return pparts[3]


# ---------------------------------------------------------------- scripts

def build(steps, label='""'):
    """Build a script from the list format described in the module docstring."""
    if not steps:
        return None
    step, rest = steps[0], steps[1:]
    if rest and isinstance(rest[0], list) and len(rest) == 1:
        kids = ' '.join(build(b, '"%d"' % (k + 1)) for k, b in enumerate(rest[0]))
        return '(%s %s (%s) NIL)' % (label, step, kids)
    sub = build(rest, label)
    if sub is None:
        return '(%s %s NIL NIL)' % (label, step)
    return '(%s %s (%s) NIL)' % (label, step, sub)


def outline(t, s, e, indent=0, out=None):
    """Outline of the script node t[s:e]: one line per step, with branch labels."""
    if out is None:
        out = []
    node = children(t, s, e)
    label = t[node[0][0]:node[0][1]].strip('"')
    step = norm(t[node[1][0]:node[1][1]])
    out.append('  ' * indent + (label + ': ' if label else '') + step)
    if len(node) > 2 and t[node[2][0]] == '(':
        kids = children(t, *node[2])
        if len(kids) == 1:
            outline(t, kids[0][0], kids[0][1], indent, out)
        else:
            for kx, ky in kids:
                outline(t, kx, ky, indent + 1, out)
    return out


def script_nodes(t, s, e, rule_re, out=None):
    """Nodes (start, end) under t[s:e] whose step matches rule_re."""
    if out is None:
        out = []
    node = children(t, s, e)
    step = norm(t[node[1][0]:node[1][1]])
    if re.fullmatch(rule_re, step, re.I):
        out.append((s, e))
    if len(node) > 2 and t[node[2][0]] == '(':
        for kx, ky in children(t, *node[2]):
            script_nodes(t, kx, ky, rule_re, out)
    return out


def set_script(t, name, script):
    span = default_script_span(t, name)
    if span is None:
        entry = '(|%s| 0 (|%s-1| NIL 3900000000 %s NIL SHOSTAK))' % (name, name, script)
        e = t.rstrip().rfind(')')
        return t[:e] + '\n ' + entry + ')\n'
    s, e = span
    return t[:s] + script + t[e:]


# ---------------------------------------------------------------- commands

def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 1
    cmd = argv[1]
    if cmd == 'list':
        for n, _, _ in entries(read(argv[2])):
            print(n)
    elif cmd == 'get':
        t = read(argv[2])
        span = default_script_span(t, argv[3])
        print('NOT FOUND' if span is None else norm(t[span[0]:span[1]]))
    elif cmd == 'show':
        t = read(argv[2])
        span = default_script_span(t, argv[3])
        if span is None:
            print('NOT FOUND')
        else:
            print('\n'.join(outline(t, *span)))
    elif cmd == 'set':
        path = argv[2]
        write(path, set_script(read(path), argv[3], argv[4]))
    elif cmd == 'build':
        print(build(eval(sys.stdin.read())))
    elif cmd == 'nodes':
        t = read(argv[2])
        s, e = default_script_span(t, argv[3])
        for k, (x, y) in enumerate(script_nodes(t, s, e, argv[4])):
            node = children(t, x, y)
            nk = len(children(t, *node[2])) if len(node) > 2 and t[node[2][0]] == '(' else 0
            print(k, norm(t[node[1][0]:node[1][1]]), '-', nk, 'children')
    elif cmd == 'set-children':
        path, name, rule, k, kids = argv[2], argv[3], argv[4], int(argv[5]), eval(argv[6])
        t = read(path)
        s, e = default_script_span(t, name)
        x, y = script_nodes(t, s, e, rule)[k]
        node = children(t, x, y)
        a, b = node[2] if len(node) > 2 and t[node[2][0]] == '(' else (None, None)
        new = '(' + ' '.join(build(br, '"%d"' % (i + 1)) for i, br in enumerate(kids)) + ')'
        if a is None:
            # The node has no children (NIL): replace the NIL after the step
            ns, ne = node[2]
            t = t[:ns] + new + t[ne:]
        else:
            t = t[:a] + new + t[b:]
        write(path, t)
    elif cmd == 'merge':
        base, other, out = argv[2], argv[3], argv[4]
        skip = argv[6] if len(argv) > 6 and argv[5] == '--skip' else None
        tb, to = read(base), read(other)
        have = {n for n, _, _ in entries(tb)}
        add = [to[x:y] for n, x, y in entries(to)
               if n not in have and not (skip and re.fullmatch(skip, n))]
        e = tb.rstrip().rfind(')')
        write(out, tb[:e] + ''.join('\n ' + a for a in add) + ')\n')
        print('added', len(add), 'entries')
    else:
        print(__doc__)
        return 1
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
