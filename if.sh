#!/bin/bash

#FILE=/etc/passwd
FILE=$1

usage ()
{
  if [ -z "$FILE" ]
  then
    echo "Usage: Please make sure to write the filename"
    echo "Example: $0 filename"
    exit 99
fi
}

usage

if [ -f $FILE ]; then
   echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi
