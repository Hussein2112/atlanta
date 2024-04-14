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

#export $#
DATE=$(date)
export SIZE=$1
function usage
{
if [ $# -eq 0 ]
then
echo 
        "Wrong Usage:
        Usage: $0 number
         Example: $0 60"
fi
}

  #exit 88
df -h |while read line
do
  #if [[ $line = /dev* ]]
  if [[ $line = "/dev*" ]]
  then
     
     perc=$(echo $line|awk '{print $5}' |cut -d'%' -f1)
     set ${line}
     if [ $perc -ge $SIZE ]
     then
          echo "The filesystem $1 is over ${SIZE}%"
     fi
      sleep 1
  fi
done
