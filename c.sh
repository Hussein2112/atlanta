
#!/bin/bash
####################################################################################
#A network has been crashing intermittently. A Linux administrator 
#would like to write a shell script
#.that will attempt to ping the server and email an alert if 
#the server fails to respond.
#The script will later be scheduled via cron job.
#Which of the following scripts would BEST accomplish this task?

####################################################################################

#C)
Server="192.168.1.50"
RESULT='ping -c 2 $SERVER > /dev/null 2>/dev/null'
while [ $RESULT != 1 ];
do
echo "Server is down" |mail -s "Server down" hussein_abdirahman@yahoo.ca
done
