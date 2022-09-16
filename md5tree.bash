#!/bin/bash

find . -type f  -exec md5sum {} \; | sort > ./files.md5sums
