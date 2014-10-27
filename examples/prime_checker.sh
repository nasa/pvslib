#!/bin/sh
if [ "$1" = '-h' -o "$1" = '-help' ]; then
    echo "Usage: prime_checker.sh [<file> [<n>]]"
else
    ../../pvsio @checker_example: \"${1:-primes.txt}\" ${2:-0}
fi
