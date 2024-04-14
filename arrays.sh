#!/bin/bash

arr=(user1 user2 user3 user4)
echo   ${arr[*]}         # All of the items in the array
echo   ${!arr[*]}        # All of the indexes in the array
echo   ${#arr[*]}        # Number of items in the array
echo   ${#arr[0]}        # Length of item zero

for item in ${arr[@]}
do
printf "   %s\n" $item
done

echo "Array indexes:"
for index in ${!arr[*]}
do
    printf "   %d\n" $index
done

echo "Array indexes and items :"
for index in ${!arr[*]}
do
    printf "%4d: %s\n" $index ${arr[$index]}
done
