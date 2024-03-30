#!/bin/bash
find . -type f  -exec md5sum {} \; | sort | less
