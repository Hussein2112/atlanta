#!/bin/bash

for ip in `cat /tmp/hackers_ips.txt`
do
whois $ip |grep -i china >/dev/null
	if [ $? -ne 0 ]
	then
	   echo "$ip"
	fi
done
