DIR=$( cd "$(dirname "$0")" ; pwd -P )

usage() {
    echo "Usage: $0 <file> | <directory>"
    exit 1
 
}

if [ -z "$1" ]; then
    usage
fi

target=$1
targetlist="";
targetlisp="";

if [ -d "$target" ]; then
    [ -z "$(find $target -iname '*.prf' -prune)" ] && echo "Error: no prf found in $target" && usage;
    for file in $(ls $target/*.prf); do
	case $file in
	    *orphaned-proofs.prf)
	    ;;
	    *)
		if [ -z "$targetlisp" ]; then
		    targetlisp="'(\"$file"\"
		else
		    targetlisp="$targetlisp \"$file\""
		fi
		targetlist="$targetlist $file"
	esac
    done
    targetlisp="$targetlisp)"
else
    dir=`dirname $target`
    base=`basename $target .prf`
    target=$dir/$base.prf
    if [ ! -f "$target" ]; then
        echo "Error: File $target not found" && usage;
    fi
    targetlisp="\"$target\""
    targetlist=$target
fi

pvs -raw -L "$DIR/fixproofs.lisp" -E "(fix-files $targetlisp) (uiop:quit)" 2>/dev/null

for file in $targetlist; do
    if [ -f $file.new ]; then
	mv -f $file $file.bak
	mv $file.new $file
    fi
done
