#!/bin/bash


SERVER=8.8.8.8
#SERVER=192.168.20.10

ping -c2 $SERVER &>/dev/null


if [  $? -ge 1 ]
then
   echo "$SERVER is down"
fi
