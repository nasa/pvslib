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

debug_mode=$3

FNUM='[\^]?[\+-]?[0-9]+'
FCOL='[\+\*-]?'
NPAR='[^\)]'                  # no closing parenthesis
NPARSPC='[^ \)]+'                  # no closing parenthesis, no space
NQTEPARSPC='[^" \(\)]+'              # no quote, no closing parenthesis, no space
NFNUMFCOL='[^\" 0-9\(\+-][^\" ]*'  # no fnum, no fnum collections


# induct
issue_pattern="\(induct +$NQTEPARSPC"
replace_pattern="s/\(induct  *([^\" ][^\") ]*)/(induct \"\\1\"/g"

# lemma
# (LEMMA NAME &OPTIONAL SUBST)
issue_pattern=$issue_pattern"|\(lemma +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/\(lemma +($NQTEPARSPC)/(lemma \"\\1\"/g"

# # expand
issue_pattern=$issue_pattern"|\(expand +$NFNUMFCOL"
issue_pattern=$issue_pattern"|\(expand +$NPARSPC +$NQTEPARSPC"
# replace_pattern=$replace_pattern";s/(expand  *\([^\" ][^\") ]*\)/(expand \"\\1\"/g"

# # expand*
issue_pattern=$issue_pattern"|\(expand\* +$NQTEPARSPC"
issue_pattern=$issue_pattern"|\(expand\* +$NPARSPC +$NQTEPARSPC"
# replace_pattern=$replace_pattern";s/\(expand\* +($NQTEPARSPC)/(expand\* \"\\1\"/g"
# replace_pattern=$replace_pattern";s/\((expand$NPAR*) +($NQTEPARSPC)/(\\1 \"\\2\"/g"
replace_pattern=$replace_pattern";/\(expand\* [^\"]*\)/{
:expandstarloop
s/(expand\*[^\)]*[\( ])([^\" \(\)]+)/\1\"\2\"/g
t expandstarloop
s/\"expand\*\"/expand\*/g
}"

# # typepred name
# (TYPEPRED &REST EXPRS)
issue_pattern=$issue_pattern"|\(typepred +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/\(typepred +($NQTEPARSPC)/(typepred \"\\1\"/g"
# # typepred (... name ...)
issue_pattern=$issue_pattern"|\(typepred +\($NQTEPARSPC$NPAR*\)"
# replace_pattern=$replace_pattern";s/\(typepred +\(($NQTEPARSPC)/(typepred (\"\\1\"/g"
replace_pattern=$replace_pattern";/\(typepred [^\"]*\)/{
:typepredloop
s/(typepred[^\)]*[\( ])([^\" \(\)]+)/\1\"\2\"/g
t typepredloop
}"

# # use
# (USE/$ LEMMA-NAME &OPTIONAL SUBST (IF-MATCH BEST) (INSTANTIATOR INST?)
issue_pattern=$issue_pattern"|\(use +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/\(use +($NQTEPARSPC)/(use \"\\1\"/g"

# rewrite
# (REWRITE/$ LEMMA-OR-FNUM &OPTIONAL (FNUMS *) SUBST (TARGET-FNUMS *) (DIR LR) (ORDER IN) DONT-DELETE?)
issue_pattern=$issue_pattern"|\(rewrite +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/\(rewrite +($NQTEPARSPC)/(rewrite \"\\1\"/g"

# # label
# (LABEL LABEL FNUMS &OPTIONAL PUSH?)
issue_pattern=$issue_pattern"|\(label +$NQTEPARSPC"
replace_pattern=$replace_pattern";s/\(label +($NQTEPARSPC)/(label \"\\1\"/g"

# # case
# (CASE &REST FORMULAS)
issue_pattern=$issue_pattern"|\(case +$NQTEPARSPC"
replace_pattern=$replace_pattern";/\(case +[^\"]*\)/{
:caseloop
s/(case[^\)]*[\( ])([^\" \(\)]+)/\1\"\2\"/g
t caseloop
}"

# # hide
# (HIDE &REST FNUMS)
# issue_pattern=$issue_pattern"|\(hide +[^\" 0-9(\+-][^\" ]*"
issue_pattern=$issue_pattern"|\(hide +$NFNUMFCOL"
# # hide [ ... ] -> hide  ... 
replace_pattern=$replace_pattern";s/\(hide +\[([0-9+ -]*)\]/\(hide \\1/g"

# # generalize
# (GENERALIZE/$ TERM VAR &OPTIONAL GTYPE (FNUMS *) (SUBTERMS-ONLY? T))
issue_pattern=$issue_pattern"|\(generalize +$NQTEPARSPC"
# issue_pattern=$issue_pattern'\|(generalize  *"[^" ]"  *[^" ]'
replace_pattern=$replace_pattern";s/\(generalize +([^\" ][^\") ]*)/\(generalize \"\\1\"/g"
replace_pattern=$replace_pattern";s/\(generalize +([^ ]*)  *([^\" ][^\") ]*)/\(generalize \\1 \"\\2\"/g"

# inst
# (INST/$ FNUM &REST TERMS)
issue_pattern=$issue_pattern"|\(inst +$FNUM +$NQTEPARSPC"
issue_pattern=$issue_pattern"|\(inst +$FCOL +$NQTEPARSPC"
# replace_pattern=$replace_pattern";s/(inst  *\([^ ]*\)  *\([^\" ][^\") ]*\)/(inst \\1 \"\\2\"/g"
replace_pattern=$replace_pattern";/\(inst +[0-9\*+-]+[^\"]*\)/{
:instloop
s/inst( +[0-9\*+-]+[^\)]*[\( ])([^\" \(\)]+)/inst\1\"\2\"/g
t instloop
s/\"inst\"/inst/g    
}
/\(inst +[[:alnum:]@?!,.{}]+[^\"]*\)/{    
:instlabelloop
s/inst([^\)]*[\( ])([^\" \(\)]+)/inst\1\"\2\"/g
t instlabelloop
}"

# issue_pattern=$issue_pattern'\|^ *[^" 0-9(-][^" ]*'

# replace_pattern=":loop
# $replace_pattern; t loop"

echo "$replace_pattern" > check-proof-rule-args.re

if [ "$operation_mode" = "d" ]; then
    [ -n "$debug_mode" ] && echo "About to run: grep --color -n -E '$issue_pattern' $target --exclude='orphaned-proofs.prf'"
    eval "grep --color -n -E '$issue_pattern' $target --exclude='orphaned-proofs.prf'"
else
    if [ "$operation_mode" = "c" ]; then
	total=`eval "grep --color -n -E '$issue_pattern' $target --exclude='orphaned-proofs.prf' | grep . -c"`
	echo "$total issues in the proof-rule arguments were detected"
    else
	[ -n "$debug_mode" ] && echo "About to run: sed -i \".bak\" -E '$replace_pattern' $target"
	# test # eval "sed -n $replace_pattern $target"
	if [ -f "orphaned-proofs.prf" ]; then
	    [ -f "orphaned-proofs-prf-bak" ] && echo "Error: I need to overwrite orphaned-proofs-prf-bak, but the file alredy exists. Please free the name and call me again." && exit 1;
	    mv orphaned-proofs.prf orphaned-proofs-prf-bak
	fi
	eval "sed -i \".bak\" -E '$replace_pattern' $target "
	[ -f "orphaned-proofs-prf-bak" ] && mv orphaned-proofs-prf-bak orphaned-proofs.prf
    fi
fi
