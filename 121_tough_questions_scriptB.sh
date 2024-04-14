#!/bin/bash

LOG='/var/log/secure'

nrlines=0
while read LINE
do
   #nrlines=`expr $nrlines + 1`
   nrlines=`$nrlines ++ 1`
   echo $nrlines --- ${LINES}
  sleep 1
#done   
done < $LOG  
