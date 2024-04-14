#!/bin/bash

FILE=/tmp/names.txt
rm -f $FILE
tput clear
tput cup 1 30
echo `tput bold` `tput smul` "To exit the script Type done"  `tput rmul` `tput sgr0`
#echo `tput bold`  "To exit the script Type done" `tput sgr0`
while true
do
echo -n "What is your name: "
read name
	if [[ $name = done ]]
	then
	   exit
	else
        echo "Your Name is $name : About to your name to $FILE"
	echo "your name is $name " >> $FILE
	fi
done
