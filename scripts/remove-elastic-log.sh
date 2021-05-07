#!/bin/bash

# Current Date by Unix Time 
TODAY=`date +%s`
# 10 Day later in Unix Time
TENDAY=864000
# Calculate 10 Day Later by Unix Time
TENDAYLATER=$(($TODAY - $TENDAY))
# Convert Unix to Timestamp
TARGET=`date -d@$TENDAYLATER +%Y-%m-%d`

curl -s -X GET "localhost:9200/_cat/indices/" | awk '{print $3}' | grep "$TARGET" > /tmp/elastic-index.txt
input="/tmp/elastic-index.txt"
while IFS= read -r line
do
  curl -X DELETE "localhost:9200/$line?pretty"
done < "$input"

if [ -e "/tmp/elastic-index.txt" ]
then 
  rm /tmp/elastic-index.txt
fi

