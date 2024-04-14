read -p "Enter First Numeric Value: " first
read -p "Enter Second Numeric Value: " second

if [ $first -le 10 ] || [ $second -gt 20 ]
then
    echo "Atleast one conditions is true"
else
    echo "Both conditions are failed"
fi
