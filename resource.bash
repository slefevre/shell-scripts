#!/bin/bash

set x

set e
if [ -f "$HOME/.profile" ]; then
  source  "$HOME/.profile"
fi

if [ -f "$HOME/.bash_profile" ]; then
  source "$HOME/.bash_profile" 
fi
