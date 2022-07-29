#!/bin/bash
SERVER=''192.168.1.50''

RESULT=`ping -C 2 $SERVER`

if [ !$RESULT ]; then
   echo "Server is down" |mail -s "Server down" admin@email_address.com
fi

