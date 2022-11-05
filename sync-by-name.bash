#!/bin/bash

set +x


## find all files in the directory

# https://unix.stackexchange.com/a/9499/394

find "$1" -type f -exec sh -c '
  for file do
    echo "$file"
    DIR="$(dirname "${file}")" ; FILE="$(basename "${file}")"
    echo "[${DIR}] [${FILE}]"
  done
' exec-sh {} +