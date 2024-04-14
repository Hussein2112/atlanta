#!/bin/bash

find /var/log -maxdepth 1 -type f  |grep $1 > /tmp/tempfile 


for  filename in $(cat /tmp/tempfile)
do 
xz $filename
done

