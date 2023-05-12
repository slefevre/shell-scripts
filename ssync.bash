#!/bin/bash

if [ $# -lt 2 ]; then
  echo "ssync: synchronize files in directories by moving files on the target directory first."
  echo "Usage: $ sync <SOURCE_DIR> <DESTINATION_DIR>"
  exit 1
fi

if [[ ! -d $1 ]]; then
  echo "Error: $1 is not an (accessible) directory."
  exit 1;
fi

if [[ ! -d $2 ]]; then
  echo "Error: $2 is not an (accessible) directory."
  exit 1;
fi

SRC=$(md5tree $1);
DST=$(md5tree $2);

echo $SRC
echo $DST
