#!/bin/bash

usage() {
    echo "Usage: $0 [<options>] -f <formula> <theory>
Extract the proof trace of formulas in <theory> using proveit --traces @theory.formula.
Valid <options> are:
-h|--help
	Print this message
-l|--log <logfile>
	Name of logfile. If this option is provided proveit isn't called
-f|--formula <f1:..:fn> 
	<fi> are formula names in <theory>. Unless <logfile> is provided, 
	this option is mandatory.
-v|--version <ver>
	Use <ver> as postfix in the name of the output file. By default, <ver> is 
        the PVS version.
-L
	Do not remove log file after proveit command
"
    exit 1
}
theory=
formulas=
version=
deletelog=y
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
	    deletelog=;;
	-L)
	    deletelog=;;
        -f|--formula)
            shift
            formulas=$1;;
	-v|--version)
	    shift
	    version=$1;;
        -*)
            echo "Error: unknown option $1"
            usage
            exit 1;;
        *)
	    theory=`basename $1 .pvs`
	    if [ ! -f "$theory.pvs" ]; then
		echo "** Error: Theory file $theory.pvs not found"
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
    file=$logfile
else
    file="$theory.pvs"
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
for formula in $arrayformulas ; do
    found=`grep $formula $theory.pvs`
    if [ -z "$found" ]; then
	echo "** Error: Formula $formula not found in $file"
	exit 1
    fi
done     

if [ -z "$logfile" ]; then
    comm="proveit --traces @$theory.$formulas"
    logfile=$theory.$formulas.log
    echo "Running: $comm"
    what=`$comm`
    echo "Producing $logfile [$what]"
fi

if [ -z "$version" ]; then
    version=`pvs --version 2>/dev/null | sed 's/.*PVS Version //'`
fi

for formula in $arrayformulas ; do
    trf="${theory}_${formula}-v${version}.trf"
    cat $logfile | sed -n "/Rerunning proof of $theory.$formula/,/^$theory.$formula/ p" > $trf
    echo "Writing $trf"
done

if [ "$deletelog" ]; then
    rm -f $theory.$formulas.log
fi
