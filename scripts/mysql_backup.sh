#!/bin/bash

DATE=`date +%Y%m%d-%H:%M`
mysqldump -u$USER -p'$PASSWORD' $DBNAME --ignore-table=DBNAME.TABLENAME  --lock-tables=false > BACKUPNAME.sql
