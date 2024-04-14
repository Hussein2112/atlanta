#!/bin/bash

############################################################################
# Author: Hussein Abdirahman
#
# Description: This script tests a here document on oracle DB
#              
#
#Date: July 27 2023
############################################################################
cd $ORACLE_HOME/bin
OUTFILE=/tmp/out.txt

./sqlplus -S system/oracle@localhost:1521/freepdb1  << EOF >$OUTFILE
set heading off;
set feedback off;
set pagesize 0;
select username from dba_users where username='SYSTEM';
exit
EOF
