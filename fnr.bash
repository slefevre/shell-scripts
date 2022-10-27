#!/bin/bash

find . -type f -exec perl -i -p -e "s/${1}/${2}/g;" {} \;
