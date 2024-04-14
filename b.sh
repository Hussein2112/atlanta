
#!/bin/bash
####################################################################################
#A network has been crashing intermittently. A Linux administrator 
#would like to write a shell script
#.that will attempt to ping the server and email an alert if 
#the server fails to respond.
#The script will later be scheduled via cron job.
#Which of the following scripts would BEST accomplish this task?

####################################################################################

#B)
SERVERB="192.168.1.50"
#SERVERB="8.8.8.8"
ping -c 2 $SERVERB > /dev/null 2>/dev/null
if [ $? -ge 1 ]; then
echo "Server $SERVERB is down" |mail -s "Server $SERVERB is down" hussein_abdirahman@yahoo.ca
fi
