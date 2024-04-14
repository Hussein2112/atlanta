#!/bin/bash
#############################################################
# Description:
# This script will display any fileystem that is over capacity.
#
# Author=Hussein
#
# Date 3-3-2020
#
#
#
#
#############################################################

SIZE=30
DATE=$(date)
df -h |while read line
do
  if [[ $line = /dev* ]]
  then
     
     perc=$(echo $line|awk '{print $5}' |cut -d'%' -f1)
     set ${line}
     if [ $perc -ge $SIZE ]
     then
          echo "The filesystem $1 is over ${SIZE}%"
     fi
      sleep 3
  fi
done
