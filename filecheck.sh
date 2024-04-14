#!/bin/bash
filename=$1
if [ -f "$filename" ] ;then
   echo "file $filename exists"
else
   echo "File $filename does not exist"
fi
