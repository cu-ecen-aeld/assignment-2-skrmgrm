#!/bin/bash

[[ $# = 0 ]] && echo "empty args" && exit 1
[[ -z $1 ]] && echo "1st argument empty" && exit 1
[[ -z $2 ]] && echo "2nd argument empty" && exit 1
filesdir=$1
searchstr=$2

if [ -d "$filesdir" ]; then
    total=$(ls "$filesdir" | wc -l)
   
    lines=$(grep -r "$searchstr" "$filesdir" | wc -l)
else
    echo "$filesdir does not exist"
    exit 1
fi

echo "The number of files are $total and the number of matching lines are $lines"