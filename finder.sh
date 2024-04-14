#!/bin/bash

find /var/log -maxdepth 1 -type f  |grep "log[1-6]$" > /tmp/tempfile 


for  filename in $(cat /tmp/tempfile)
do 
gzip $filename
done

