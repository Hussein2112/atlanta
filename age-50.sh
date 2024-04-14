#!/bin/bash
Year=$(date +"%Y")
age=0
echo -n "What is your name: "
read  name 
echo -n "How old are you: "
read age
if (( $age > 50 ))
then
     echo "you are already older then 50 years "
elif (( $age == 50 ))
then
    echo "Well, you are 50 years of age. Congratulations"
else
    echo "Hello $name, You will be 50 years of age in the year $(( 50 - age + $Year ))"
fi
