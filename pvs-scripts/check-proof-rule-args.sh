#!/bin/sh

usage_msg="\nUsage\n\n   $(basename $0) [lib|lib/prf-filename] [mode]\n\n - mode = d : display, c : count, r : repair"

total=0

# first parameter: target
# - option 1: library name, e.g., TRS
# - option 2: prf filename, e.g., TRS/orthogonality_basis.prf
target=$1
[ -z "$target" ] && echo "Error: target not provided" && echo $usage_msg && exit 1;
if [ -d "$target" ]; then
    [ -z "$(find $target -iname '*.prf' -prune)" ] && echo "Error: no prf found in $target" && echo $usage_msg  && exit 1;
    target="$target/*.prf"
else
    if [ ! -f "$target" ]; then
	if [ -f "$target.prf" ]; then
	    target="$target.prf"
	else
	    echo "Error: target $target not found" && echo $usage_msg && exit 1;
	fi
    fi
fi

operation_mode=$2
[ ! "$operation_mode" = "c" ] && [ ! "$operation_mode" = "r" ] && [ ! "$operation_mode" = "d" ] &&
    echo "The second parameter must indicate the mode of operation: [d]isplay, [c]ount, or [r]eplace" &&
    exit 1;

FNUM='[\^]?[\+-]?[0-9]+'
FCOL='[\+\*-]?'
NQTEPARSPC='[^" \)]+'             # no quote, no closing parenthesis, no space
NFNUMFCOL='[^\" 0-9\(\+-][^\" ]*'  # no fnum, no fnum collections

# induct
issue_pattern="\(induct +$NQTEPARSPC"
replace_pattern="s/(induct  *\([^\" ][^\") ]*\)/(induct \"\\1\"/g"

# # lemma
issue_pattern=$issue_pattern"|\(lemma +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/(lemma  *\([^\" ][^\") ]*\)/(lemma \"\\1\"/g"

# # expand
issue_pattern=$issue_pattern"|\(expand +$NFNUMFCOL"
replace_pattern=$replace_pattern";s/(expand  *\([^\" ][^\") ]*\)/(expand \"\\1\"/g"

# # expand*
issue_pattern=$issue_pattern"|\(expand\* +$NFNUMFCOL"
replace_pattern=$replace_pattern";s/(expand\*  *\([^\" ][^\") ]*\)/(expand\* \"\\1\"/g"

# # typepred
issue_pattern=$issue_pattern"|\(typepred +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/(typepred  *\([^\" ][^\") ]*\)/(typepred \"\\1\"/g"

# # use
issue_pattern=$issue_pattern"|\(use +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/(use  *\([^\" ][^\") ]*\)/(use \"\\1\"/g"

# # label
issue_pattern=$issue_pattern"|\(label +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/(label  *\([^\" ][^\") ]*\)/(label \"\\1\"/g"

# # case
issue_pattern=$issue_pattern"|\(case +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/(case  *\([^\" ][^\") ]*\)/(case \"\\1\"/g"

# # hide
# issue_pattern=$issue_pattern"|\(hide +[^\" 0-9(\+-][^\" ]*"
issue_pattern=$issue_pattern"|\(hide +$NFNUMFCOL"
# # hide [ ... ] -> hide ( ... )
replace_pattern=$replace_pattern";s/(hide  *\[\([0-9+ -]*\)\]/(hide (\\1)/g"

# # generalize
issue_pattern=$issue_pattern"|\(generalize +$NQTEPARSPC"
# issue_pattern=$issue_pattern'\|(generalize  *"[^" ]"  *[^" ]'
replace_pattern=$replace_pattern";s/(generalize  *\([^\" ][^\") ]*\)/(generalize \"\\1\"/g"
replace_pattern=$replace_pattern";s/(generalize  *\([^ ]*\)  *\([^\" ][^\") ]*\)/(generalize \\1 \"\\2\"/g"

# inst
issue_pattern=$issue_pattern"|\(inst +$FNUM +$NQTEPARSPC"
issue_pattern=$issue_pattern"|\(inst +$FCOL +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/(inst  *\([^ ]*\)  *\([^\" ][^\") ]*\)/(inst \\1 \"\\2\"/g"

# issue_pattern=$issue_pattern'\|^ *[^" 0-9(-][^" ]*'

if [ "$operation_mode" = "d" ]; then
    echo "About to run: grep --color -n -E '$issue_pattern' $target --exclude='orphaned-proofs.prf'"
    eval "grep --color -n -E '$issue_pattern' $target --exclude='orphaned-proofs.prf'"
else
    if [ "$operation_mode" = "c" ]; then
	total=`eval "grep --color -n -E '$issue_pattern' $target --exclude='orphaned-proofs.prf' | grep . -c"`
	echo "$total issues in the proof-rule arguments were detected"
    else
	echo "About to run: sed -i \".bak\" '$replace_pattern' $target"
	# test # eval "sed -n $replace_pattern $target"
	if [ -f "orphaned-proofs.prf" ]; then
	    [ -f "orphaned-proofs-prf-bak" ] && echo "Error: I need to overwrite orphaned-proofs-prf-bak, but the file alredy exists. Please free the name and call me again." && exit 1;
	    mv orphaned-proofs.prf orphaned-proofs-prf-bak
	fi
	eval "sed -i \".bak\" '$replace_pattern' $target "
	[ -f "orphaned-proofs-prf-bak" ] && mv orphaned-proofs-prf-bak orphaned-proofs.prf
    fi
fi
