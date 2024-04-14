#!/bin/bash

w| grep -v jim|awk 'NR > 2 {print $1,$2}'\
 |while read line
do
   #set $line; echo "Hello $1, \
   set $line
   printf "Hello, %s \n" $1  >/dev/$2
   echo "Please email your test results when done" >/dev/$2
 done
