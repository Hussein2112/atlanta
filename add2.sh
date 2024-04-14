#!/bin/bash

echo -n 'Enter A Positive Integer: '
read a

echo -n 'Enter Another To Add: '
read b

  if [[ $a != [0-9]* ]]
  then 
     echo "you are a moron for using negative numbers"
     #echo "$a not is a positive integer"
  elif [[ $b != [0-9]* ]]
  then 
     echo "We are here 2"
    : #echo "$b is not a positive integer"
  else 
    echo "$a + $b = $(( a + b ))"
  fi
