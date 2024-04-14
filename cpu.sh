#!/bin/bash
#
# creates X pipes in ~/pipes and runs X cpu intensive processes
#

# number of pipes to create
pipes=6

# enter ~/pipes (create if necessary)
if [ -d ~/pipes ]
then 
 cd ~/pipes
else
 mkdir ~/pipes
 cd ~/pipes
fi

# create fifo's
for i in `seq 1 $pipes`
do
 mkfifo pipe$i
done

# generate cpu intensive processes
for i in `seq 1 2 $pipes`
do
 cp /bin/cat ./proj0$i
 let j=$i+1
 echo -n x | ./proj0$i - pipe$i >pipe$j &
 ./proj0$i <pipe$j >pipe$i &
done
