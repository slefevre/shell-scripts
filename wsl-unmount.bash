#!/bin/bash

# Exit on error
set -e

# Echo commands
# set -x

# test emtpy argument
if [[ $# -eq 0 ]] ; then
  echo "Please specify a drive letter (e.g. f)."
  exit 0
fi

DRIVELETTER=$(echo $1 | tr '[:lower:]' '[:upper:]')

if mountpoint -q /mnt/$1; then
  if sudo umount -vvv /mnt/$1 && sudo rmdir /mnt/$1; then 
    echo "$1 has been unmounted."
  else
    echo "Error unmounting $1"
    exit -1
  fi
else
  echo "$1 is not mounted."
fi
