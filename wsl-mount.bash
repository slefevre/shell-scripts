#!/bin/bash

# Exit on error
set e

# Echo commands
set x

# test emtpy argument
if [ -z "$1" ]; then
	echo "Please specify a drive letter (e.g. f)."
  exit 0
fi

DRIVELETTER=$(echo $1 | tr '[:lower:]' '[:upper:]')

echo $DRIVELETTER
sudo mkdir -p /mnt/$1
# sudo mount -t drvfs "$DRIVELETTER:" /mnt/$1
