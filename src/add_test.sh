#!/bin/sh
# Tests for add function

# Source the add function
. "$(dirname "$0")/add.sh"

# Test 1: add 2 + 3 = 5
result=$(add 2 3)
if [ "$result" -eq 5 ]; then
    echo "PASS: add 2 3 = 5"
else
    echo "FAIL: add 2 3 expected 5, got $result"
    exit 1
fi

# Test 2: add 0 + 0 = 0
result=$(add 0 0)
if [ "$result" -eq 0 ]; then
    echo "PASS: add 0 0 = 0"
else
    echo "FAIL: add 0 0 expected 0, got $result"
    exit 1
fi

# Test 3: add -1 + 1 = 0
result=$(add -1 1)
if [ "$result" -eq 0 ]; then
    echo "PASS: add -1 1 = 0"
else
    echo "FAIL: add -1 1 expected 0, got $result"
    exit 1
fi

# Test 4: add 100 + 200 = 300
result=$(add 100 200)
if [ "$result" -eq 300 ]; then
    echo "PASS: add 100 200 = 300"
else
    echo "FAIL: add 100 200 expected 300, got $result"
    exit 1
fi

echo "All tests passed!"