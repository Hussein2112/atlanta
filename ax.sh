#!/bin/bash


exec >> ~/storage_report.txt 
echo "Beginning of Storage Check..."

echo "Date: $(date)"
echo "===================++"

part=/dev/vda1
part=$(df -h |awk '{print $1}' |grep '/dev')
for i in ${part[*]}
do
checkperc=$(df -h |grep $part|awk '{print $5}' |cut -d '%' -f1)

	if [ $checkperc -ge 25 ] && [ $checkperc -le 100 ]
	then
          echo "ALERT: $i is $checkperc% full! Recommend immediate action!"
	elif [ $checkperc -ge 10 ] && [ $checkperc -lt 25 ]
	then
	  echo "CAUTION: $i is $checkperc% full! Consider freeing up some space"
	elif [ $checkperc -lt 10 ]
	then
	   echo "$i is $checkperc% full. No action needed"
	else
	   echo "Encountered and error. Status code: $?" >&2
	   echo $?
fi
done
echo "Storage Check Complete. Report saved to $HOME/storage_report.txt " >&2
#=========================================================================


