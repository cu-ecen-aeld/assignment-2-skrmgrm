#!/bin/bash

[[ $# = 0 ]] && echo "empty args" && exit 1
[[ -z $1 ]] && echo "1st argument empty" && exit 1
[[ -z $2 ]] && echo "2nd argument empty" && exit 1

writefile=$1
writestr=$2
mkdir -p "${writefile%/*}"
echo $writestr > $writefile || (echo "could not write to file" && exit 1)