#!/bin/bash
 
read -p "Enter First Numeric Value: "  first
read -p "Enter Second Numeric Value: "  second
 
if [ $first -le 10 ]  && [ $second -gt 20 ]
then
    echo "Both conditions are true"
else
    echo "Atleast one conditions is false"
fi
