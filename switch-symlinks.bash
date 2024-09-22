#!/bin/bash

##########
# Switches
##########

# Exit on error
set -e

# Echo commands
set -x

# exit on no arguments
if [[ $# -eq 0 ]] ; then
  echo 'No arguments.'
  exit 0
fi

# test emtpy argument
if [ -z "$2" ]; then
  echo "missing second argument"
  exit 0
fi

# https://stackoverflow.com/a/36180056
if [ -L ${1} ] ; then
   if [ -e ${1} ] ; then
      echo "${1} is a working symlink."
   else
      echo "${1} is a broken symlink."
   fi
else
   echo "Reference ${1} is not a symlink."
fi

if ! [ -d ${2} ] && ! [ -f ${2} ] ; then
  echo "Reference ${2} is not a file nor a directory."
  exit 0;
fi

echo "Pointing symlink ${1} to ${2}";

exit 1;
