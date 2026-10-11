#!/bin/bash
# Send one Lisp expression to the PVS server of a library, and print the result as text.
# usage: srv.sh LIBDIR 'LISP-EXPRESSION'
# Examples (functions of server-tools.lisp):
#   srv.sh nasalib/graphs '(nlp-typecheck "complem")'
#   srv.sh nasalib/graphs '(nlp-status "complem")'
#   srv.sh nasalib/graphs '(nlp-formulas "complem" "t_close_TCC")'
#   srv.sh nasalib/graphs "(nlp-try \"complem\" \"t_close_TCC1\" \"$(python3 prftools.py build <<< "['(GRIND)']")\")"
#   srv.sh nasalib/graphs '(nlp-save "complem")'
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
NASALIB=${NASALIB:-$(cd "$HERE/../../../.." && pwd)}
LIBDIR=$(cd "$1" && pwd -P) || exit 2
STATE_DIR=${STATE_DIR:-${TMPDIR:-/tmp}/nasalib-pvs-servers}
PORTF=$STATE_DIR/$(echo "$LIBDIR" | sed 's#[/ ]#_#g').port
[ -f "$PORTF" ] || { echo "No server for $LIBDIR: run pvs-server.sh start $LIBDIR"; exit 2; }
"$NASALIB/pvs-scripts/pvs-cli.sh" --port "$(cat "$PORTF")" --lisp "(pvs::$(echo "$2" | sed 's/^(//')" 2>&1 \
  | python3 -c '
import sys, json
t = sys.stdin.read()
i = t.find("Lisp result:")
if i < 0:
    print(t); sys.exit(1)
r = t[i + len("Lisp result:"):].strip()
try:
    v = json.loads(r)
    v = json.loads(v) if isinstance(v, str) and v.startswith("\"") else v
    print(v if isinstance(v, str) else json.dumps(v))
except Exception:
    print(r)
'
