#!/bin/bash


if [ -x /etc/hosts ]
then
   echo "Success"
   exit 0
else
   echo "is NOT executable"
   exit 99
fi
