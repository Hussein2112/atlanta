#!/bin/bash

while read i
do
 #echo "About to delete user $i"
 echo "We are about to delete user $i"
 sleep 2
 #rm -rf /home/$i
 userdel -r  $i 
      sleep 3
done < /var/www/html/a



