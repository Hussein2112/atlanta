#!/bin/bash

while true
do
ps -ef |grep httpd > /dev/null
sleep 10
done
