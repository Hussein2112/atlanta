#!/bin/bash

while true
do
ps -ef |grep -v grep |grep http  >/dev/null

if [ $? -gt  0 ]
then
  systemctl start httpd
fi
sleep 2
done
