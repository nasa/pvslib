## This script generates n tests for primes@prime_factorization
if [ -z "$1" ]; then
    echo "Usage: $0 <n>"
    exit 1
fi
result=`pvs -raw -L "primes.lisp" -E "(generate-prime-factorization-tests $1) (uiop:quit)" 2>/dev/null`
echo "Generated prime-factorization-tests.txt"
