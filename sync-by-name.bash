#!/bin/bash

set +x


## find all files in the directory

# https://unix.stackexchange.com/a/9499/394

find "$1" -type f -exec sh -c '
  for file do
    echo "$file"
    DIR="$(dirname "${file}")" ; FILE="$(basename "${file}")"
    echo "DIR: ${DIR}"
    echo "FILE: ${FILE}"
    echo "1: ${1}"
    # RELPATH=$(echo $DIR | sed -e s/"^$1"//)
    # echo "$RELPATH"
    echo "-------"
  done
' exec-sh {} +


