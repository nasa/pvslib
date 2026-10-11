#!/bin/bash
# Start, stop, or show a dedicated PVS server for one NASALib library.
#
# usage: pvs-server.sh start|stop|status LIBDIR
#
# start: picks the first free port from 23500 up (VS Code PVS sessions use 23456 and up),
#        starts "pvs -raw -port P" with its input kept open, waits until the server listens,
#        checks that it listens on P, changes its workspace to LIBDIR, and loads
#        server-tools.lisp. Use one server per library, so that each library starts clean.
# stop:  stops the server of LIBDIR.
# The port, the process ids, and the log are in $STATE_DIR (default: $TMPDIR/nasalib-pvs-servers),
# outside the library directory.
# Environment: PVS_DIR (PVS installation), NASALIB (default: the parent of pvs-scripts),
#              STATE_DIR.
set -u
HERE=$(cd "$(dirname "$0")" && pwd)
NASALIB=${NASALIB:-$(cd "$HERE/../../../.." && pwd)}
: "${PVS_DIR:?set PVS_DIR}"
CMD=$1; LIBDIR=$(cd "$2" && pwd -P) || exit 2
STATE_DIR=${STATE_DIR:-${TMPDIR:-/tmp}/nasalib-pvs-servers}
mkdir -p "$STATE_DIR"
KEY=$(echo "$LIBDIR" | sed 's#[/ ]#_#g')
PORTF=$STATE_DIR/$KEY.port; LOG=$STATE_DIR/$KEY.log
FIFO=$STATE_DIR/$KEY.in; HOLDPID=$STATE_DIR/$KEY.holder
CLI="$NASALIB/pvs-scripts/pvs-cli.sh"

listening() { lsof -nP -iTCP:"$1" -sTCP:LISTEN >/dev/null 2>&1; }

case $CMD in
  start)
    if [ -f "$PORTF" ] && listening "$(cat "$PORTF")"; then
      echo "Server for $LIBDIR already runs on port $(cat "$PORTF")"; exit 0
    fi
    P=23500
    while listening $P; do P=$((P+1)); done
    : > "$LOG"
    # The server reads its input from a named pipe. A sleep process holds the pipe open,
    # so that the REPL does not read end-of-file. Stopping that process stops the server.
    rm -f "$FIFO"; mkfifo "$FIFO"
    ( cd "$LIBDIR" && PVS_LIBRARY_PATH=${PVS_LIBRARY_PATH:-$NASALIB} \
        "$PVS_DIR/pvs" -raw -port $P < "$FIFO" >> "$LOG" 2>&1 & )
    sleep 31536000 > "$FIFO" &
    echo $! > "$HOLDPID"
    for i in $(seq 1 120); do
      grep -q 'Listening on' "$LOG" && break
      sleep 1
    done
    REAL=$(grep -o 'Listening on 127.0.0.1:[0-9]*' "$LOG" | head -1 | sed 's/.*://')
    if [ "$REAL" != "$P" ]; then
      echo "Error: the server did not start on port $P (log: $LOG)"; exit 1
    fi
    echo $P > "$PORTF"
    "$CLI" --port $P --change-workspace "$LIBDIR" | tail -1
    "$CLI" --port $P --lisp "(load \"$HERE/server-tools.lisp\")" | tail -1
    echo "Server for $LIBDIR on port $P (log: $LOG)"
    ;;
  stop)
    [ -f "$PORTF" ] || { echo "No server for $LIBDIR"; exit 0; }
    P=$(cat "$PORTF")
    [ -f "$HOLDPID" ] && kill "$(cat "$HOLDPID")" 2>/dev/null
    sleep 2
    for pid in $(lsof -nP -t -iTCP:"$P" -sTCP:LISTEN 2>/dev/null); do kill "$pid"; done
    rm -f "$PORTF" "$HOLDPID" "$FIFO"
    echo "Stopped the server for $LIBDIR (port $P)"
    ;;
  status)
    if [ -f "$PORTF" ] && listening "$(cat "$PORTF")"; then
      echo "Server for $LIBDIR on port $(cat "$PORTF")"
    else
      echo "No server for $LIBDIR"
    fi
    ;;
  *) echo "usage: $0 start|stop|status LIBDIR"; exit 2;;
esac
