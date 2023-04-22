#!/bin/bash
set -x;
path=$(pwd | sed -e 's/\//-/g' | cut -c2- );
echo $path;
find . -type f -exec md4sum {} \; | sort > "./${path}files.md4sums"
