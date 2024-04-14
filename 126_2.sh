#!/usr/bin/sh

for i in `cat /tmp/ip-list.txt`
do
nslookup $i
done
echo
