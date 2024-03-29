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
  echo "/mnt/$1 is already mounted."
else
  sudo mkdir -p /mnt/$1
  sudo mount -t drvfs "$DRIVELETTER:" /mnt/$1
  echo "$1 has been mounted at /mnt/$1." 
fi
