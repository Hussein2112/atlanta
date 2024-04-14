i=0
while [ $i -le 20 ]
do
 echo $i
  i=$(( $i + 1 ))
#sleep 1
done

echo "i is now $i so I am exiting"
