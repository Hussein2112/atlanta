#!/bin/bash

FILES=(/etc/sdfsdfsd /etc/hosts /etc/resolv.conf /etc/hosts.deny)
#if [ -f $FILES ]
#then 
#echo "$FILES exists"
#fi

for file in ${FILES[@]}
do
  if [ -f $file ]
  then
     echo "$file exists"
   else 
     echo "file DOES NOT exist"
  fi
done
