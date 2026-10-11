#!/bin/bash
# Try a proof of one formula, without opening an interactive session.
#
# usage: try-proof.sh LIBDIR THEORY FORMULA < SCRIPT-LIST
#   LIBDIR       directory of the library (the PVS context), for example nasalib/graphs
#   SCRIPT-LIST  the proof as a Python list (see prftools.py build), on stdin
#
# The script sets the default proof of FORMULA in THEORY.prf, runs proveit on that
# formula only (with a time limit), and prints the status and the last open goals.
# Environment: PVS_DIR (default: directory of the pvs command), TAIL (lines, default 30),
#              LIMIT (seconds, default 300).
# Copy THEORY.prf before you use this script: it changes the file.
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
LIBDIR=$1; TH=$2; F=$3
PVS_DIR=${PVS_DIR:-$(dirname "$(command -v pvs)")}
cd "$LIBDIR" || exit 2
SCRIPT=$(python3 "$HERE/prftools.py" build) || exit 2
python3 "$HERE/prftools.py" set "$TH.prf" "$F" "$SCRIPT" || exit 2
perl -e "alarm ${LIMIT:-300}; exec @ARGV" "$PVS_DIR/proveit" -l --traces --no-scripts "@$TH.$F" > /dev/null 2>&1
# A proveit run that hits the time limit leaves its PVS process: stop it
pkill -f 'pvs -raw -E \(proveit\)' 2>/dev/null
grep -a '\.\.\.' "$TH.$F.summary"
grep -a -B40 '^Postponing' "$TH.$F.log" | grep -v '^\s*$' | tail -"${TAIL:-30}"
grep -a '^Postponing' "$TH.$F.log" | sort -u
