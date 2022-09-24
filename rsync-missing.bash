#!/bin/bash

# https://unix.stackexchange.com/a/149504/394

rsync -h -v -r -P -t  $1 $2
