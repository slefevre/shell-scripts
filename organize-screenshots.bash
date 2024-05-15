#!/bin/bash

set -x

for SCREENSHOT in ./*.jpg
do
  SUBSTRING="${SCREENSHOT##*_}"
  DIR="$(basename $SUBSTRING .jpg)"
  echo "Moving $SCREENSHOT to  $DIR..."
  # mkdir -p $DIR
  # mv $SCREENSHOT $DIR
done
