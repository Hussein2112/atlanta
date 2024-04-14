#!/bin/bash

LOG=/var/log/secure
nrlines=0
cat $LOG|while read abc
do
  nrlines=$((nrlines + 1))
  #echo $nrlines --- ${abc}
  echo $nrlines
  sleep 1
done 
