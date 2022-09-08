#!/bin/bash

find . -type f  -exec md5sum {} \; -print | sort > ./files.md5sums
cat ./files.md5sums
