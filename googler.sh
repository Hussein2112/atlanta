#!/bin/bash 
site=$1
function usage
{
if [ -z "$site" ]
then
  echo "Wrong Usage:
        Usage: $0 website
         Example: $0 google.com"
  exit 10
fi
}

usage

PS=`ps -ef |grep 'dhclient'|egrep -v 'grep|sbin'|awk '{print $8}'`

if [ "$PS" == "dhclient" ]
then
   :
else
   echo "You may need to run the command dhclient before you continue"
   exit 10
fi

GG=`ping $site -c4 2>/dev/null |grep 'packet loss'|awk '{print $6}'`

if (( $? > 0 ))
then
    echo "Either your system is not connected to the internet
           the website $1 is down
          OR you have a typo in the website name"
elif [ "$GG" == "0%" ]
then
    echo "The $1 website is pingable AND no packet loss detected"

else
    echo "I don't know this website"
fi
