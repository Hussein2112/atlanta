#!/bin/bash

LOG='/var/log/secure'

nrlines=0
while read LINE
do
#   nrlines=`$nrlines ++1`
   nrlines=`expr $nrlines + 1`
   echo $nrlines --- ${LINE}
   sleep 2
#done   
done < $LOG  
