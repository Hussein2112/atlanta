var=1

while [ $var -le 5 ]
do
    echo "The current number is $var."
    ((var++))
    sleep 2
done
