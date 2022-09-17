#!/bin/bash
path=$(pwd | sed -e 's/\//-/g' | cut -c2- );
find . -type f  -exec md5sum {} \; | sort > "./${path}files.md5sums"
