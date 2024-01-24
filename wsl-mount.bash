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

MOUNTPOINT=$1


sudo mkdir /mnt/$1
sudo mount -t drvfs D: /mnt/d
