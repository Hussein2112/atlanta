#!/bin/bash
#
# This is from the Red Hat System Stories
#
# https://www.redhat.com/sysadmin/sysadmin-stories-2021
#
#
#
#
#
########################################
YEAR=2022
INTERVAL=1
NEXT_BUG_YEAR=2038  #Maybe we don't have to worry a about it



while [ $YEAR -le $NEXT_BUG_YEAR ]
do
     for MONTH in $(locale mon |tr ";" " ")
     do
         echo "Oh, wow.... Can you BELIEVE we are already in $MONTH of $YEAR ????"
         sleep $INTERVAL
    done

   ((YEAR = YEAR + 1))
   banner "Happy $YEAR !!"
done
