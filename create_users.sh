#!/bin/bash

echo
echo
echo
PASS=A2360801a
#PASS=password!23
#This script creates users

existing ()
{
  #id $i 2>/dev/null >&2
  id $i &>/dev/null 
  if [ $? -eq  0 ]
  then
     echo "The user $i  already exist "
     userdel -r $i
  fi
}
while read i
do



	#echo "About to create user $i"
	 echo "We are about to create user $i"
	 sleep 1
         existing
	 useradd $i 2>/dev/null
	 if (( $? > 0 ))
	 then
         	  echo "user $i has already been created
	        	Please investigate with command
	        	grep $i /etc/passwd"
	 else
	          echo '-------------------------------------'
	          echo "Creating passwd $PASS user $i"
	          echo "$PASS" |passwd --stdin $i 2>/dev/null
                  usermod -aG students $i
	 fi
	 echo '-------------------------------------'
	 echo '-------------------------------------'
	 echo
      sleep 3
done < /root/students.txt
