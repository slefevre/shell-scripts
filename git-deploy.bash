#!/bin/bash

# Exit on error
set e

# Echo commands
set x

# exit on no arguments
if [[ $# -eq 0 ]] ; then
  echo 'No arguments.'
  exit 0
fi

# test emtpy argument
if [ -z "$2" ]; then
  echo "Please specify the commit to export."
  exit 0
fi

$ARCHIVENAME="$1-$2"

# git archive $2 --format=tar.gz --output=$1-$2.tar.gz --prefix="$1-$2/"

echo 1;
