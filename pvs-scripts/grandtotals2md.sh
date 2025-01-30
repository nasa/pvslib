#!/bin/bash

#
# Mariano Moscato (01/30/2025)
#

GRANDTOTALS_FILE=nasalib.grandtotals

[ -z "$1" ] ||
    { [ "$1" = "-h" -o "$1" = "?"  -o "$1" = "-?" ] &&
	  { echo "
This script assumes there's a file named '$GRANDTOTALS_FILE' in the location 
where it is invoked, containing the grand totals of a provethem run.

Intended usage is:

NASALib $ ./pvs-scripts/grandtotals2md.sh > nasalib.grandtotals.md
" && exit 1;} ||
	      { echo "Unrecognized option '$1', try '-h'" && exit 1; } } 

echo "bla"

[ -f "$GRANDTOTALS_FILE" ] || ( echo "Error file $GRANDTOTALS_FILE not found." && exit 1 )

echo "# Grand Totals"

fail_lib_count=`sed -n 's/^\([^ ]*\) *Proving... \[\([^:-]*\). \(.*\)\]/\1 \2 \3/gp' $GRANDTOTALS_FILE | grep -c FAIL`
ok_lib_count=`sed -n 's/^\([^ ]*\) *Proving... \[\([^:-]*\). \(.*\)\]/\1 \2 \3/gp' $GRANDTOTALS_FILE | grep -c OK`
miss_lib_count=`sed -n 's/^\([^ ]*\) *Proving... \[\([^:-]*\). \(.*\)\]/\1 \2 \3/gp' $GRANDTOTALS_FILE | grep -c MISS`

lib_count=$((fail_lib_count + miss_lib_count + ok_lib_count))

formulas_title=`sed -n "s%\*\*\* Grand Totals: \([0-9]*\) proofs / [0-9]* formulas. Missed: \([0-9]*\) formulas.%Attempted Formulas<br>_\1_ | Broken Formulas<br>_\2_%p" nasalib.grandtotals`

echo "|Library<br>_"$lib_count"_ | Status<br>$ok_lib_count&nbsp;✅&nbsp;OK<br>$miss_lib_count&nbsp;⚠&nbsp;MISS<br/>$fail_lib_count&nbsp;❌&nbsp;FAIL | $formulas_title | Reported&nbsp;Error |"
echo "|--- | --- | --- | --- | --- |"

sed -n 's/^\([^ ]*\) *Proving... \[\([^:-]*\). \(.*\)\]/\1 \2 \3/gp' "$GRANDTOTALS_FILE" \
    | sed 's%^\([^ ]*\) MISS \([0-9]*\) unsuccessful / \([0-9]*\) formulas *\(.*\)%|[\1](summaries/\1.summary)|⚠ MISS|\3|\2|\4|%g' \
    | sed 's%^\([^ ]*\) OK \([0-9]*\) proofs%|[\1](summaries/\1.summary)|✅ OK|\2|0||%g' \
    | sed 's%^\([^ ]*\) FAIL *\(.*\)%|[\1](summaries/\1.summary)|❌ FAIL|?|?|\2|%g' \
    | sed 's%\(summaries/.*\)/\(.*\.summary\)%\1-\2%g'
