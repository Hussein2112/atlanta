#!/bin/bash
    #IFS=':'
LOG=/root/scripts/pinger.log
rm -f $LOG 2>/dev/null
exec > $LOG
#cat /root/scripts/pinger.cfg |while read line
cat /var/www/html/scripts/pinger.cfg |while read line
do
    SERVER="$line"
    COUNT=4
    PINGED=`ping $SERVER -c $COUNT |grep 'packet loss' |awk '{print $6}'`
    if [ "$PINGED" == "100%" ]
    then
       echo "It appears that you can't reach $SERVER... Check Network connectivity"
    fi
done
if [ -s  $LOG  ]
then
   mail -s "There appears that there is an issue with at least onie of the servers" hussein_abdirahman@yahoo.ca < $LOG
fi
