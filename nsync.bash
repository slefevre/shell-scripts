#!/bin/bash

set +x

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

# find all files in the source dir (A)
# https://unix.stackexchange.com/a/9499/394
while IFS=  read -r -d $'\0'; do
    echo $REPLY | tr '\0' '\n'  ;
    FILESA+=("$REPLY")
done < <(find . -print0)

for FILEA in ${FILESA[@]}; do
  echo $FILEA;
done

exit 0;

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


