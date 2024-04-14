#!/bin/bash

#find /var/log -maxdepth 1 -type f  |grep "$1" > /tmp/tempfile
#|grep $1 > /tmp/tempfile 



find /var/log -type f -maxdepth 1 |grep $1 > /tmp/tempfile 


for  filename in $(cat /tmp/tempfile)
do 
gzip $filename
done

