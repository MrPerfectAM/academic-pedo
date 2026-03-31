#!/bin/bash

# Author: Aditya Tomar (24BCY10153)

# Log File Analyzer

# Check if Target Log File is Provided
if [ -z "$1" ]; then
  echo "Please provide a target log file"
  exit 1
fi

# Suggest Realistic Log Path for Python
# For example: /var/log/syslog

# Use while read Loop to Count Occurrences of Keyword
COUNT=0
while read line; do
  if [[ "$line" *$2* ]]; then
    ((COUNT++))
done < "$1"
echo "Count of $2 in $1: $COUNT"

# Use tail to Print Last 5 Matches
tail -n 5 "$1" | grep -i "$2"

