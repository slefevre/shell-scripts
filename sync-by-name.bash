#!/bin/bash

set +x

# find all files in the source dir (A)
# https://unix.stackexchange.com/a/9499/394
while IFS=  read -r -d $'\0'; do
    FILESA+=("$REPLY")
done < <(find . -name "${input}" -print0)

for FILEA in ${iFILESA[@]}; do
  echo $FILEA;
done

# get B files


# each A file:
# if not B
#   if not in B
#       create in B
#     else
#       mv B
#   delete A entry
#   delete B entry
# each reamingin B
#

FILESA=();
FILESB=();


find $1 -type f

# Find all files in source (A)
https://stackoverflow.com/a/23357277
while IFS=  read -r -d $'\0'; do
    array+=("$REPLY")
done < <(find . -name "${input}" -print0)

return 0;

find . *jonathan86* -type f -exec sh -c '
  i = 0;
  for file do
    echo "file: $file"
    DIR="$(dirname "${file}")" ; FILE="$(basename "${file}")"
    echo "DIR: ${DIR}"
    echo "FILE: ${FILE}"
    echo "1: ${1}"
    RELPATH=$(echo $DIR | sed -e s/"^$1"//)
    echo "$RELPATH"
    echo "-------"
    ((i++))
    if [ i gt 5 ]; then
      break
    fi

  done
' exec-sh {} +


