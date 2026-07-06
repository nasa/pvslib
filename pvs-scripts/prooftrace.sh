#!/bin/bash

split_at_sign() {
      local input="$1"
      if [[ "$input" == *@* ]]; then
          ctx="${input%%@*}"
          theory="${input#*@}"
      else
          ctx=""
          theory="$input"
      fi
}

usage() {
    echo "Usage: $0 [<options>] -f <formula> <[ctx@]theory>
Extract the proof trace of formulas in theory> (in directory ctx) using proveit --traces ctx@theory.formula.
Valid <options> are:
-h|--help
	Print this message
-l|--log <logfile>
	Name of logfile. If this option is provided, proveit is not called
-f|--formula <f1:..:fn> 
	<fi> are formula names in <theory>. Unless <logfile> is provided, 
	this option is mandatory.
-L
	Do not remove log file after proveit command
-S	
	Do not remove summary file after proveit command
-b|--onlybad
	Do not save GOOD trf, only BAD ones (typically enabled when
	this script is used through the git bisect utility)
-g|--git
	Use PVS commit checksum to name the output file (typically enabled when
	this script is used through the git bisect utility)
"
    exit 1
}

get_version() {
    pvsexe=`which pvs`
    pvsdir=`dirname $pvsexe`
    pvsname=`basename $pvsdir`
    if [ -z "$pvsdir" ]; then
	echo "PVS not found"
	exit 1
    fi
    if [ "$git" ] &&  git -C $pvsdir rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    	checksum=`git -C $pvsdir rev-parse --short HEAD`
	version="$pvsname-$checksum"
    else
	version=`pvs -raw -E '(format t "~a-~a" *pvs-version* (if (fboundp (quote pvs-build-date)) (pvs-build-date) 0)) (pvs::exit-pvs)' 2>/dev/null`
    fi
}

get_version
#echo "VERSION: $version"
#exit 1

ctx=
theory=
formulas=
deletelog=y
deletesum=y
onlybad=
git=
while [ $# -gt 0 ]
do
    case $1 in
        -h|--help)    
            usage;;
	-l|--logfile)
            shift
            logfile=$1
	    if [ -z "$logfile" ]; then
		echo "** Error: Option -l requires a log file to be provided"
		exit 1
	    elif [ ! -f "$logfile" ]; then
		echo "** Error: Log file $logfile not found"
		exit 1
	    fi
	    deletelog=
	    deletesum=;;
	-b|--onlybad)
	    onlybad=y;;
	-g|--git)
	    git=y;;
	-L)
	    deletelog=;;
	-S)
	    deletesum=;;
        -f|--formula)
            shift
            formulas=$1;;
        -*)
            echo "Error: unknown option $1"
            usage
            exit 1;;
        *)
	    ctxtheory=`basename $1 .pvs`
	    split_at_sign $ctxtheory
	    if [ -z "$ctx" ]; then
		file="$ctxtheory.pvs"
	    else
		file="$ctx/$theory.pvs"
	    fi
	    if [ ! -f "$file" ]; then
		echo "** Error: Theory file $file not found"
		exit 1
	    fi;;
    esac
    shift 
done

if [ "$logfile" ]; then
    name=`basename $logfile .log`
    thfmlas=(${name//./ })
    if [ -z "$theory" ]; then
	theory=${thfmlas[0]}
    fi
    if [ -z "$formulas" ]; then
	formulas=${thfmlas[1]}
    fi
fi

if [ -z "$theory" ]; then
    echo "** Error: Theory name should be provided"
    exit 1    
fi

if [ -z "$formulas" ]; then
    echo "** Error: Formula names should be provided (use option -f)"
    exit 1    
fi

arrayformulas=${formulas//:/ }

if [ -z "$logfile" ]; then
    comm="proveit --traces $ctx@$theory.$formulas"
    if [ -z "$ctx" ]; then
	logfile="$theory.$formulas.log"
    else
	logfile="$ctx/$theory.$formulas.log"
    fi
    echo "$comm --> $logfile"
    out=`$comm`
fi

err=
for formula in $arrayformulas ; do
    bad=
    if echo "$out" | grep -q "$formula.*unfinished"; then
	bad="-BAD"
	err="y"
    fi
    if [ -z "$onlybad" -o "$bad" ]; then
	if [ -z "$ctx" ]; then
	    trf="${theory}-${formula}-${version}$bad.trf"
	else
	    trf="${ctx}-${theory}-${formula}-${version}$bad.trf"
	fi
	cat $logfile | sed -n "/Rerunning proof of $theory.$formula/,/^$theory.$formula/ p" > $trf
	echo "Writing $trf"
    fi
done

if [ "$deletelog" ]; then
    rm -f $logfile
fi

if [ "$deletesum" ]; then
    rm -f $ctx/$theory.$formulas.summary
fi

if [ "$err" ]; then
    exit 1
fi
