#!/bin/bash

w|awk 'NR > 2 {print $1,$2}'\
 |while read line
do
   #set $line; echo "Hello $1, \
   set $line
   printf "Hello, %s \n" $1  >/dev/$2
   echo "Please let me know when done" >/dev/$2
 done
