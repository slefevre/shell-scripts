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
  else
    echo "Error unmounting /mnt/$1"
    exit -1
  fi
else
  echo "/mnt/$1 is not mounted."
fi
