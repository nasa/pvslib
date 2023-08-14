#!/bin/sh
if [ "$1" = '-h' -o "$1" = '-help' ]; then
    echo "Usage: prime-checker.sh [<file> [<n>]]"
else
    pvsio @prime_check: \"${1:-primes.txt}\" ${2:-0}
fi
