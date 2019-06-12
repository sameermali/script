#!/bin/bash

# https://google.github.io/styleguide/shell.xml

# $0 expands to name of shell or shell script
SCRIPT=$0
echo "script file name: $SCRIPT"

ARG_COUNT=$#
echo "arguments count: $ARG_COUNT"
#sh bash_tut.sh arg1  // arguments count: 1

# if file name not supplied at command prompt display usage message and die
# [[ $# -eq 0 ]] && { echo "Usage: $0 filename"; exit 1; }
# echo "\$1(arg 1) = $1"

# get directory of file
SCRIPT_PATH=$(realpath $SCRIPT)
SCRIPT_DIRECTORY=$(dirname $SCRIPT_PATH)   # preferred
#SCRIPT_DIRECTORY=`dirname $SCRIPT_PATH`    # back ticks not preferred
echo "script directory: $SCRIPT_DIRECTORY"

# if elif else if example
if [ "$SCRIPT" = "bash_tut.sh" ]; then
  echo "inside if clause"
elif [ "$SCRIPT" = "foo.sh" ]; then
  echo "inside elif clause"
else
  echo "inside else"
fi


# functions should be declared before usage
print_num() {
  echo "num: $1"
}
print_num 5

# check function call successful or not
error_func() {
  foo -v
}

error_func
if [ $? -ne 0 ]; then
  echo "error_func failed"
fi

print_num 20
if [ $? -eq 0 ]; then
  echo "print num success"
fi


# test operators
if [ -n  "one" ]; then echo "string length greater than 0"; fi
if [ -z "" ]; then echo "string length is 0"; fi
if [ "str1" = "str1" ]; then echo "equal strings"; fi
if [ "str1" != "str1" ]; then echo "not equal strings"; fi
if [ 1 -eq 1 ]; then echo "equal ints"; fi
if [ 2 -gt 1 ]; then echo "int1 is greater than int2"; fi
if [ 2 -lt 4 ]; then echo "int1 is less than int2"; fi
if [ -d "/home" ]; then echo "/home exists and is directory"; fi
if [ -e "$SCRIPT" ]; then echo "$SCRIPT file exists"; fi
