#!/bin/sh
if [ "$1" = '-h' -o "$1" = '-help' ]; then
    echo "Usage: $0 [<file> [<n>]]"
else
    pvsio @prime_factorization_checker: \"${1:-prime-factorization-tests.txt}\" ${2:-0} 2>/dev/null
fi
