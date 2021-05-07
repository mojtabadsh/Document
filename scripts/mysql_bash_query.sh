#!/bin/bash
set -x

user=""
pass=""
DBNAME=""
QUERY=""

mysql --user=$user --password=$pass --database=$DBNAME --execute="$QUERY"

mysqldump -u$USER -p'$PASSWORD' $DBNAME --ignore-table=DBNAME.TABLENAME  --lock-tables=false > BACKUPNAME.sql
