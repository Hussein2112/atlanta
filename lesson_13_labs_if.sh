#!/bin/bash


exec >> ~/storage_report.txt 
echo "Beginning of Storage Check..."

echo "Date: $(date)"
echo "===================++"

part=/dev/vda1
checkperc=$(df -h |grep $part|awk '{print $5}' |cut -d '%' -f1)

if [ $checkperc -ge 95 ] && [ $checkperc -le 100 ]
then
     echo "ALERT: $part is $checkperc% full! Recommend immediate action!"
elif [ $checkperc -ge 50 ] && [ $checkperc -lt 95 ]
then
  echo "CAUTION: $part is $checkperc% full! Consider freeing up some space"
elif [ $checkperc -lt 50 ]
then
   echo "$part is $checkperc% full. No action needed"
else
   echo "Encountered and error. Status code: $?" >&2
   echo $?
fi
echo "Storage Check Complete. Report saved to storage_report.txt " >&2
#=========================================================================


