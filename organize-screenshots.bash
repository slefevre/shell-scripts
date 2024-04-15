#!/bin/bash
for SCREENSHOT in ./*.jpg
do
  SUBSTRING="${SCREENSHOT##*_}"
  DIR="$(basename $SUBSTRING .jpg)"
  echo "found $DIR $SUBSTRING"
done
