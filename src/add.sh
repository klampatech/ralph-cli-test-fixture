#!/bin/sh
# Add function - returns the sum of two numbers
# Usage: add a b
add() {
    echo $(($1 + $2))
}

# If called directly with arguments, output the sum
if [ $# -eq 2 ]; then
    add "$1" "$2"
fi