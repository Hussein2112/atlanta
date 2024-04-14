cat newuser.txt |while read xamar
do 
echo "Hadda waxaan delete garaynaynaa userka $xamar"
 sleep 5
 echo;echo;echo
 userdel $xamar
done
