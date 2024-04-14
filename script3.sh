#!/bin/bash

FILE=/tmp/names.txt
rm -f $FILE
echo "To exit the script Type done"
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
