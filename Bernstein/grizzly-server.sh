export GRIZZLYPORT=nil
export GRIZZLYSECURE=nil
export GRIZZLYMAX=nil
export GRIZZLYVERBOSE=nil
BERNSTEINDIR=`pwd`
export PVS_LIBRARY_PATH=`dirname $BERNSTEINDIR`

usage() {
    echo "Usage: grizzly-server [-port <port>] [-secure] [-verbose] [-maxclients <n>]"
    exit
}

while [ $# -gt 0 ]
do
   case $1 in
       -help) usage;;
       -port) GRIZZLYPORT=$2
           shift;;
       -secure) GRIZZLYSECURE=t;;
       -verbose) GRIZZLYVERBOSE=t;;
       -maxclients) GRIZZLYMAX=$2
	   shift;;
       *) echo "Unknown option: $1"
	  usage;;
   esac
   shift
done
pvs -raw -L grizzly.lisp
