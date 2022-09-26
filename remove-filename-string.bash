#!/bin/bash
set -x
replacement="'s/${1}//g'"
rename $replacement *
