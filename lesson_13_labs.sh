#!/bin/bash


exec >> ~/storage_report.txt 
echo "Beginning of Storage Check..."

echo "Date: $(date)"
echo "===================++"

part=/dev/vda1
checkperc=$(df -h |grep $part|awk '{print $5}' |cut -d '%' -f1)

echo "$part is $checkperc% full"

echo "Storage Check Complete. Report saved to storage_report.txt " >&2
#==============================================================================



