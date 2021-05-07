#!/bin/bash
DB_PASS=''
DB_NAME=''
IP=''
SCHEMA=''

sqlplus -s ${DB_NAME}/${DB_PASS}@${IP}:1521/${SCHEMA} << EOF
QUERY
EOF
