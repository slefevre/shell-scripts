# Examples for shell scripting

# Exit with success
exit 0;

# Exit with error
exit 1;

# store output in a variable
VAR=$(command args)
echo "$VAR";

# check number of arguments
if [ $# -lt 2 ]; then
  # TODO: print usage
  exit 1
fi

# test if value is dir or file
if [[ -d $PASSED ]]; then
   echo "$PASSED is a directory"
elif [[ -f $PASSED ]]; then
  echo "$PASSED is a file"
else
  echo "$PASSED is not valid"
  exit 1
fi

