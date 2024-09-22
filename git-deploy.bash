#!/bin/bash

# Exit on error
set -e

# Echo commands
# set -x

# exit on no arguments
if [[ $# -eq 0 ]] ; then
  echo 'No arguments.'
  exit 0
fi

# test emtpy argument
if [ -z "$1" ]; then
  echo "Please specify the commit to export."
  exit 0
fi

PROJECTNAME="$(git rev-parse --show-toplevel | xargs basename)"
ARCHIVENAME="${PROJECTNAME}-${1}"

echo "Creating $ARCHIVENAME.tar.gz ...";

git archive $1 --format=tar.gz --output=${ARCHIVENAME}.tar.gz --prefix="${ARCHIVENAME}/"

exit 1;
