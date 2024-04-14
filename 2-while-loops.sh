#!/bin/bash


a=0   #initializing the variable a outside the loops

while (( a < 10 ))  #Begin loop1
do
  b=$a
	  while (( b >= 0 )) # Begin loop2. We still in this loop till b=-1 which is less than 0
	  do
	     echo -n $b
	     b=$(( b - 1 ))
            sleep 1
	  done           #End of loop2 
  echo                   #This will create a new line
  a=$(( a + 1 ))
done   #End of loop1 which is the main loop
