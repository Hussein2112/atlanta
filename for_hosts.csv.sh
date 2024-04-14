for ip in $(grep "Linux" hosts.csv | cut -d "," -f1)
do 
echo -n "$ip,"
done
echo
