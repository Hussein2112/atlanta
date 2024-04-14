#Script delete all users provided on the command line
for i in $@
do
 echo
 echo "About to DELETE user $i"
 userdel -r $i 2>/dev/null
 if (( $? == 0 ))
 then
    echo "User $i is about to go"
 else
   echo "user $i does NOT exist in this system"
 echo "--------------------------------"
 fi
 sleep 3
done
