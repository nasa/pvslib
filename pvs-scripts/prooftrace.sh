#!/bin/bash

prefix=
postfix=
split_once() {
    string="$1"
    delimiter="$2"
    
    case "$string" in
        *"$delimiter"*)
              prefix=${string%%"$delimiter"*}
              postfix=${string#*"$delimiter"}
              ;;
          *)
              prefix="$string"
              postfix=""
              ;;
      esac
}

usage() {
    echo "Usage: $0 [<options>] <[ctx@]theory>.<f1:..:fn>
Extract the proof trace of formulas <f1>,..,<fn> in <theory>, in directory <ctx>, using proveit --traces <ctx>@theory.<f1>:..:<fn>.
At least one formula <fi> is mandatory unless <logfile> if provided.
Valid <options> are:
-h|--help
	Print this message
-l|--log <logfile>
	Use <logfile< instead of calling proveit
--v|--version <ver>
        Use <ver> as postfix in the name of the output file. By default, <ver> is
        the PVS version.
-L
	Do not remove log file after proveit command
-S	
	Do not remove summary file after proveit command
-b|--onlybad
	Do not save GOOD trf, only BAD ones (typically enabled when
	this script is used through the git bisect utility)
-g|--git
	Use PVS commit checksum as version (typically enabled when
	this script is used through the git bisect utility)
"
    exit 1
}

git=

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
	echo "VERSION [git]: $version"
    else
	version=`pvs -raw -E '(format t "~a-~a" *pvs-version* (if (fboundp (quote pvs-build-date)) (pvs-build-date) 0)) (pvs::exit-pvs)' 2>/dev/null`
	echo "VERSION [pvs]: $version"
    fi
}

ctx=
theory=
formulas=
deletelog=y
deletesum=y
onlybad=
version=
logfile=
file=

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
	-v|--version)
            shift
            version=$1;;        
	-b|--onlybad)
	    onlybad=y;;
	-g|--git)
	    git=y;;
	-L)
	    deletelog=;;
	-S)
	    deletesum=;;
        -*)
            echo "** Error: unknown option $1"
            usage
            exit 1;;
        *)
	    split_once "$1" "@"
	    if [ -z "$postfix" ]; then
		postfix="$prefix"
	    else
		ctx="$prefix"
	    fi
	    split_once "$postfix" "."
	    theory=$prefix
	    formulas=$postfix
	    if [ -z "$theory" ]; then
		echo "** Error: <theory> is missing"
		exit 1
	    elif [ -z "$ctx" ]; then
		file="$theory.pvs"
	    else
		file="$ctx/$theory.pvs"
	    fi
	    if [ ! -f "$file" ]; then
		echo "** Error: Theory file $file not found"
		exit 1
	    fi
    esac
    shift 
done

if [ "$logfile" ]; then
    dir=`dirname ${logfile}`
    ctx=`basename ${dir}`
    if [ "$ctx" = "." ]; then
	ctx=
    fi
    name=`basename ${logfile} .log`
    thfmlas=(${name//./ })
    if [ -z "$theory" ]; then
	theory=${thfmlas[0]}
    fi
    if [ -z "$formulas" ]; then
	formulas=${thfmlas[1]}
    fi
fi

if [ -z "$theory" ]; then
    echo "** Error: <theory> is missing"
    exit 1    
fi

if [ -z "$formulas" ]; then
    echo "** Error: List of formulas <f1>:..:<fn> is missing"
    exit 1    
fi

if [ -z "$version" ]; then
    get_version
fi

arrayformulas=${formulas//:/ }

out=
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
	(cat $logfile | sed -n "/Rerunning proof of $theory.$formula/,/^$theory.$formula/ p") > "$trf"
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
