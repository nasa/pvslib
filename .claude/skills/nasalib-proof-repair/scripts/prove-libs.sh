#!/bin/bash
# Prove NASALib libraries in nasalib.all order, one at a time, and commit each library
# that passes all the checks. Stop at the first library that fails.
#
# usage: prove-libs.sh AFTER OUTDIR [UNTIL]
#   AFTER   start with the library that comes after AFTER in nasalib.all
#   OUTDIR  directory for the prove-all output of each library
#   UNTIL   stop after this library (optional)
# Environment: NASALIB (default: current directory), PVS_DIR (PVS installation),
#              COMMIT_TRAILER (optional text added at the end of each commit message),
#              PROVE_ALL_OPTS (optional extra options for prove-all, for example
#              --pvs-option "L <file.lisp>" to load a patch for this run only).
#
# A library passes when its summary was rewritten by this run, it has a .dep file,
# all formulas succeeded, and there is no "proved - incomplete", unfinished, untried,
# or unchecked formula. A new untracked .prf file is added only if its .pvs file is
# tracked. The commit includes only the library directory (without its sub-libraries),
# summaries/<lib>.summary, and summaries/<lib>.dep. Anything else that is staged is
# not committed.
# Only use this script when the user asked for commits. It never pushes.
set -u
NASALIB=${NASALIB:-$(pwd)}
: "${PVS_DIR:?set PVS_DIR}"
AFTER=$1; OUT=$2; UNTIL=${3:-}
mkdir -p "$OUT"
cd "$NASALIB" || exit 2
ALL=$(grep -v '^\s*#' nasalib.all | sed 's/#.*//' | cut -d: -f1 | sed 's/[[:space:]]*$//; s/^[[:space:]]*//' | grep -v '^$')
go=""
for lib in $ALL; do
  if [ -z "$go" ]; then [ "$lib" = "$AFTER" ] && go=1; continue; fi
  dashed=$(echo "$lib" | sed 's#/#-#g')
  sum=summaries/$dashed.summary; dep=summaries/$dashed.dep
  excl=""; for e in $ALL; do case "$e" in "$lib"/*) excl="$excl :!$e";; esac; done
  echo "=== $(date '+%H:%M:%S') $lib"
  start=$(date +%s)
  eval "PVS_DIR=\$PVS_DIR ./prove-all --do \"\$lib\" --out \"\$OUT/\$dashed.grandtotals\" ${PROVE_ALL_OPTS:-}" > "$OUT/$dashed.out" 2>&1
  rc=$?
  status=$(grep -a "Proving\.\.\.\|Typing\.\.\." "$OUT/$dashed.out" | tail -1)
  echo "    rc=$rc $status"
  fail=""
  [ -f "$sum" ] || fail="no summary $sum"
  [ -z "$fail" ] && [ "$(stat -f %m "$sum")" -lt "$start" ] && fail="summary $sum was not rewritten"
  [ -z "$fail" ] && [ ! -f "$dep" ] && fail="no dependency file $dep"
  if [ -z "$fail" ]; then
    gt=$(grep -a 'Grand Totals' "$sum" | tail -1)
    n=$(echo "$gt" | sed 's/.*Grand Totals: \([0-9]*\) proofs, \([0-9]*\) attempted, \([0-9]*\) succeeded.*/\1 \3/')
    inc=$(grep -a -c 'proved - incomplete' "$sum")
    bad=$(grep -a -c '\.\.\.unfinished\|\.\.\.untried\|\.\.\.unchecked' "$sum")
    echo "    $gt | incomplete=$inc unfinished/untried/unchecked=$bad"
    set -- $n
    [ "$inc" != 0 ] && fail="$inc incomplete proofs"
    [ "$bad" != 0 ] && fail="$bad unfinished, untried, or unchecked formulas"
    [ "${1:-x}" != "${2:-y}" ] && [ -z "$fail" ] && fail="not all formulas succeeded ($gt)"
    total=${1:-0}
  fi
  if [ -z "$fail" ]; then
    for u in $(git ls-files --others --exclude-standard -- "$lib" $excl); do
      case "$u" in
        *.prf) if git ls-files --error-unmatch "${u%.prf}.pvs" >/dev/null 2>&1; then
                 git add "$u"; echo "    added new proof file $u"
               else fail="untracked file $u"; fi;;
        *) fail="untracked file $u";;
      esac
      [ -n "$fail" ] && break
    done
  fi
  if [ -n "$fail" ]; then echo "STOP at $lib: $fail"; exit 1; fi
  if git diff --quiet HEAD -- "$lib" $excl "$sum" "$dep" && \
     [ -z "$(git ls-files --others --exclude-standard -- "$sum" "$dep")" ]; then
    echo "    no changes to commit"
  else
    git add -- "$sum" "$dep" 2>/dev/null
    git commit -q --only -m "$lib: update proofs, summary, and dependency file

All $total formulas are proved, and all proofs are complete.${COMMIT_TRAILER:+

$COMMIT_TRAILER}" -- "$lib" $excl "$sum" "$dep" \
      || { echo "STOP at $lib: commit failed"; exit 1; }
    echo "    committed $(git log -1 --format='%h %s')"
  fi
  [ -n "$UNTIL" ] && [ "$lib" = "$UNTIL" ] && break
done
echo "=== DONE $(date '+%H:%M:%S')"
