#!/bin/bash

# original script found at:
#   https://superuser.com/a/426454/13743
find $1 $2 -type f -exec sha1sum {} + | sort | uniq -u --check-chars 40 | cut -c 43-
