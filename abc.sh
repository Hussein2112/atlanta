#!/bin/bash

FILE=/etc/passwdddd
#FILE=$1

if [ -f $FILE ]; then
   echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi
