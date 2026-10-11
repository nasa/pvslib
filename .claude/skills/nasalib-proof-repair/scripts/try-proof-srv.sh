#!/bin/bash
# Try a proof of one formula on the PVS server of the library (see pvs-server.sh).
# usage: try-proof-srv.sh LIBDIR THEORY FORMULA < SCRIPT-LIST
#   SCRIPT-LIST  the proof as a Python list (see prftools.py build), on stdin
# The proof is set in the server's memory only. When it works, write the .prf file with
#   srv.sh LIBDIR '(nlp-save "THEORY")'
# Environment: LIMIT (seconds, default 120), TAIL (trace lines, default 60).
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
LIBDIR=$1; TH=$2; F=$3
SCRIPT=$(python3 "$HERE/prftools.py" build) || exit 2
ESC=$(printf '%s' "$SCRIPT" | sed 's/\\/\\\\/g; s/"/\\"/g')
"$HERE/srv.sh" "$LIBDIR" "(nlp-try \"$TH\" \"$F\" \"$ESC\" ${LIMIT:-120} ${TAIL:-60})"
