#!/bin/sh

total=0

lib_name=$1

operation_mode=$2
[ ! "$operation_mode" = "c" ] && [ ! "$operation_mode" = "r" ] && [ ! "$operation_mode" = "d" ] &&
    echo "The second parameter must indicate the mode of operation: [d]isplay, [c]ount, or [r]eplace" &&
    exit 1;

# induct
issue_pattern='(induct  *[^" ][^" ]*'
replace_pattern="s/(induct  *\([^\" ][^\") ]*\)/(induct \"\\1\"/g"

# lemma
issue_pattern=$issue_pattern'\|(lemma  *[^" ][^" ]*'
replace_pattern=$replace_pattern";s/(lemma  *\([^\" ][^\") ]*\)/(lemma \"\\1\"/g"

# expand
issue_pattern=$issue_pattern'\|(expand  *[^" ][^" ]*'
replace_pattern=$replace_pattern";s/(expand  *\([^\" ][^\") ]*\)/(expand \"\\1\"/g"

# typepred
issue_pattern=$issue_pattern'\|(typepred  *[^" ][^" ]*'
replace_pattern=$replace_pattern";s/(typepred  *\([^\" ][^\") ]*\)/(typepred \"\\1\"/g"

# use
issue_pattern=$issue_pattern'\|(use  *[^" ][^" ]*'
replace_pattern=$replace_pattern";s/(use  *\([^\" ][^\") ]*\)/(use \"\\1\"/g"

# label
issue_pattern=$issue_pattern'\|(label  *[^" ][^" ]*'
replace_pattern=$replace_pattern";s/(label  *\([^\" ][^\") ]*\)/(label \"\\1\"/g"

# case
issue_pattern=$issue_pattern'\|(case  *[^" ][^" ]*'
replace_pattern=$replace_pattern";s/(case  *\([^\" ][^\") ]*\)/(case \"\\1\"/g"

# hide
issue_pattern=$issue_pattern'\|(hide  *[^" 0-9(\+-][^" ]*'
# hide [ ... ]
replace_pattern=$replace_pattern";s/(hide  *\[\([0-9+ -]*\)\]/(hide (\\1)/g"

# generalize
issue_pattern=$issue_pattern'\|(generalize  *[^" ][^" ]*'
issue_pattern=$issue_pattern'\|(generalize  *"[^" ]"  *[^" ]'
replace_pattern=$replace_pattern";s/(generalize  *\([^\" ][^\") ]*\)/(generalize \"\\1\"/g"
replace_pattern=$replace_pattern";s/(generalize  *\([^ ]*\)  *\([^\" ][^\") ]*\)/(generalize \\1 \"\\2\"/g"

# issue_pattern=$issue_pattern'\|^ *[^" 0-9(-][^" ]*'

[ -n "$(find $lib_name -iname '*.prf' -prune )" ] &&
    # grep "$issue_pattern" "$lib_name"/*.prf
    # eval '$('$command')'
    if [ "$operation_mode" = "d" ]; then
	grep --color -n "$issue_pattern" "$lib_name"/*.prf --exclude='orphaned-proofs.prf'
    else
	if [ "$operation_mode" = "c" ]; then
	    total=`grep "$issue_pattern" "$lib_name"/*.prf | grep "^.*[^0]\$" -c`
	    echo "$total issues in the proof-rule arguments were detected"
	else
	    echo "About to run: sed -i \".bak\" '$replace_pattern' \"$lib_name\"/*.prf"
	    # test # eval "sed -n $replace_pattern \"$lib_name\"/*.prf"
	    if [ -f "orphaned-proofs.prf" ]; then
		[ -f "orphaned-proofs-prf-bak" ] && echo "Error: I need to overwrite orphaned-proofs-prf-bak, but the file alredy exists. Please free the name and call me again." && exit 1;
		mv orphaned-proofs.prf orphaned-proofs-prf-bak
	    fi
	    eval "sed -i \".bak\" '$replace_pattern' \"$lib_name\"/*.prf "
	    [ -f "orphaned-proofs-prf-bak" ] && mv orphaned-proofs-prf-bak orphaned-proofs.prf
	fi
    fi

