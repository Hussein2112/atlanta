#!/bin/bash


for ip in $(cat ip-list.txt)
do
  whois $ip |egrep 'country:        CN' >/dev/null
  if [ $? -ne 0 ]
  then
     echo "$ip"
  fi
done
