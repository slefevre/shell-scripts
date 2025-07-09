#!/bin/bash

set -e

SOURCE="$HOME/.profile";

if [ -f $SOURCE ]; then
  echo "sourcing $SOURCE";
  source  $SOURCE;
fi

SOURCE="$HOME/.bash_profile";
if [ -f $SOURCE ]; then
  echo "sourcing $SOURCE";
  source  $SOURCE;
fi
