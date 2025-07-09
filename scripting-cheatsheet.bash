#!/bin/bash

# Exit on error
set -e

# Echo commands
set -x

# if statements
if [[ *test-goes-here* ]] ; then
  *commands go here*
fi

# exit on no arguments
if [[ $# -eq 0 ]] ; then
  echo 'No arguments.'
  exit 0
fi

# test emtpy argument
if [ -z "$2" ]; then
  echo "missing second argument"
  exit 0
fi

# handling switches
# "getopts"

while getopts "p" opt; do
  case $opt in
    p) p_post_deploy=true ;;
  esac
done
...
# remove the switches from the arguments array
shift $(($OPTIND - 1))


# case statement
case "$1" in
  preflight)
    echo "Got preflight."
    ;;
  flight)
    echo "Got flight."
    ;;
  postflight)
    echo "got postflight."
    ;;
  *)
     echo "Usage: $ command argument"
     exit 1
esac

# confirmation
read -p "Are you sure you do X? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

# looping
for f in $FILES; do 
  echo "Processing $f file..."
  cat $f
done

# using a temporary file
# https://unix.stackexchange.com/a/181938/394
# https://stackoverflow.com/a/55435723/151841
tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
exec 3> "$tmpfile"
exec 4< "$tmpfile"
rm "$tmpfile"

# temp directory
# https://unix.stackexchange.com/a/181939/394
# Warning! apparently doesn't disappear on exit
temp_dir=$(mktemp -d)

# heredoc
cat << EOF > /tmp/yourfilehere
These contents will be written to the file.
        This line is indented.
EOF
