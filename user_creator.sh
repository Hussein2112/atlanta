cat newuser.txt |while read xamar
do 
echo "Hadda waxaan create garaynaynaa userka $xamar"
 useradd $xamar
done
