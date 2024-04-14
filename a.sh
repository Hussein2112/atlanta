#!/bin/bash

#var=0

echo -n "Please Enter a number: "
read var
if [ $var -gt 10 ]
then
    echo "$var is greater than 10!"
else
   echo "$var is less thatn 10"
fi
