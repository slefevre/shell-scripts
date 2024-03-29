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

sudo unmount /mnt/$1
sudo rmdir /mnt/$1
