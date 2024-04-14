#!/bin/bash

LOG=/var/log/secure
nrlines=0
while read abc
do
  nrlines=$((nrlines + 1))
  echo $nrlines --- ${abc}
  sleep 1
done < ${LOG}
