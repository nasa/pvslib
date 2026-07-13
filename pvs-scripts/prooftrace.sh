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
    echo "Usage: $0 [<options>] <[dir@]theory>.<f1:..:fn>
Extract the proof trace of formulas <f1>,..,<fn> in <theory>, in directory <dir>,
using the command proveit --traces <lib>@theory.<f1>:..:<fn>, where <lib> is the
basename of <dir>. At least one formula <fi> is mandatory unless <logfile> if provided.
Each proof trace is written in a file named <lib>-<theory>-<f1>--<label>[-BAD].trf. The
postfix -BAD is added, when the trace is unfinished.

Valid <options> are:
-h|--help
	Print this message
--log <logfile>
	Use <logfile< instead of calling proveit
--label <label>
        Use <label> in the name of the trace file. By default, <label> is
        the PVS version, the build date, and the Git commit (if PVS is within
	a Git directory)
-L
	Do not remove log file after proveit command
-S	
	Do not remove summary file after proveit command
--pvsdir <pvsdir>
	PVS directory. By default, assume PVS is in the PATH

Options typically used with Git bisect:
--bad
	Only write proof traces that are unfinished
--build
	Build PVS for current Git commit
--git <commit>
	Git checkout <commit> and build PVS
"
    exit 1
}

dir="."
ctx=
theory=
formulas=
deletelog=y
deletesum=y
onlybad=
label=
logfile=
sumfile=
file=
pvsdir=
commit=
build=

while [ $# -gt 0 ]
do
    case $1 in
        -h|--help)    
            usage;;
	--logfile)
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
	--pvsdir)
	    shift
	    pvsdir=$1
	    if [ -z "$pvsdir" ]; then
		echo "** Error: <pvsdir> is missing"
		exit 1
	    elif [ ! -x "$pvsdir/pvs" ]; then
		echo "** Error: PVS not found in $pvsdir/pvs"
		exit 1
	    fi;;
	--label)
            shift
            label=$1
	    if [ -z "$label" ]; then
		echo "** Error: <label> is missing"
		exit 1
	    fi;;
	--bad)
	    onlybad=y;;
	--build)
	    build=y;;
	--git)
	    shift
            commit=$1
	    if [ -z "$commit" ]; then
		echo "** Error: <commit> is missing"
		exit 1
	    fi
	    build=y;;
	-L)
	    deletelog=;;
	-S)
	    deletesum=;;
        -*)
            echo "** Error: unknown option $1"
            exit 1;;
        *)
	    dir="."
	    ctx=
	    split_once "$1" "@"
	    if [ -z "$postfix" ]; then
		postfix="$prefix"
	    elif [ "$prefix" ]; then
 	    	dir=`dirname $prefix`
		ctx=`basename $prefix`
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
		file="$dir/$ctx/$theory.pvs"
	    fi
	    if [ ! -f "$file" ]; then
		echo "** Error: Theory file $file not found"
		exit 1
	    fi
    esac
    shift 
done

if [ -z "$pvsdir" ]; then
    pvsexe=`which pvs || echo`
    if [ -z "$pvsexe" ]; then
	echo "** Error: PVS not found in PATH"
	exit 1
    fi
    pvsdir=`dirname $pvsexe`
fi

git=
if git -C $pvsdir rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    git=y
fi

if [ "$commit" ]; then
    if [ -z "$git" ]; then
	echo "** Error: PVS directory is not in Git"
	exit 1
    else
	pushd $pvsdir;git checkout $commit;popd
    fi
fi

if [ "$build" ]; then
    pushd $pvsdir
    ./configure
    make clean; make
    if [ ! -f pvs ]; then
	echo "** Error: Cannot make PVS"
	exit 125
    fi
    if [ -d nasalib ]; then
	pushd nasalib;./install-scripts;./cleanbin-all;popd
    fi
    popd
fi

checksum=
if [ $git ]; then
    checksum=`git -C $pvsdir rev-parse --short HEAD`
fi

if [ -z "$label" ]; then
    version=`$pvsdir/pvs -raw -E '(format t "~a-~a" *pvs-version* (if (fboundp (quote pvs-build-date)) (pvs-build-date) 0)) (pvs::exit-pvs)' 2>/dev/null`
    if [ -z "$checksum" ]; then
	label="$version"
    else
        label="$version-$checksum"    
    fi
fi

echo "<pvsdir> : $pvsdir"
echo "<label>  : $label"

if [ -z "$theory" ]; then
    exit 0
elif [ -z "$formulas" ]; then
    echo "** Error: List of formulas <f1>:..:<fn> is missing"
    exit 1    
fi

out=
if [ "$logfile" ]; then
    logdir=`dirname ${logfile}`
    ctx=`basename ${logdir}`
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
else
    pushd "$dir"
    comm="$pvsdir/proveit --traces $ctx@$theory.$formulas"
    out=`$comm`
    popd
    name="$theory.$formulas"
    if [ "$ctx" ]; then
	name="$dir/$ctx/$name"
    fi
    logfile="$name.log"
    sumfile="$name.summary"
    echo "$comm --> $logfile"
fi

err=
arrayformulas=${formulas//:/ }
for formula in $arrayformulas ; do
    bad=
    if echo "$out" | grep -q "$formula.*unfinished"; then
	bad="-BAD"
	err="y"
    fi
    if [ -z "$onlybad" -o "$bad" ]; then
	if [ -z "$ctx" ]; then
	    trf="${theory}-${formula}-${label}$bad.trf"
	else
	    trf="${ctx}-${theory}-${formula}-${label}$bad.trf"
	fi
	(cat $logfile | sed -n "/Rerunning proof of $theory.$formula/,/^$theory.$formula/ p") > "$trf"
	echo "Writing $trf"
    fi
done

if [ "$deletelog" ]; then
    rm -f $logfile
fi

if [ "$deletesum" ]; then
    rm -f $sumfile
fi

if [ "$err" ]; then
    exit 100
fi
