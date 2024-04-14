
#!/bin/bash
####################################################################################
#A network has been crashing intermittently. A Linux administrator 
#would like to write a shell script
#.that will attempt to ping the server and email an alert if 
#the server fails to respond.
#The script will later be scheduled via cron job.
#Which of the following scripts would BEST accomplish this task?

####################################################################################


#D)
#Server="192.168.1.50"
SERVER="8.8.8.8"

ping -c 2 $SERVER >/dev/null 2>/tmp/fail.log
#ping -c 2 $SERVER > /dev/null 2>/tmp/fail.log

#if [ -f /tmp/fail/log ]; then
if [ -f /tmp/fail.log ]; then
echo "Server $SERVER is down" |mail -s "Server $SERVER is down" hussein_abdirahman@yahoo.ca
fi
