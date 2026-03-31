#!/bin/bash

# Author: Aditya Tomar (24BCY10153)

# Disk and Permission Auditor

# Define Array of Directories
DIRECTORIES=("/etc" "/var/log" "/usr/bin" "/usr/lib/python3.10" "/usr/lib/python3.10/site-packages")

# Loop Through Directories
for dir in "${DIRECTORIES[@]}"; do
  if [ -d "$dir" ]; then
    # Get Size, Permissions, and Owner
    SIZE=$(du -h $dir | cut -f 1)
    PERMISSIONS=$(stat -c "%a" $dir)
    OWNER=$(stat -c "%u:%g" $dir | cut -d ':' -f 1,2)
    printf "%s %s %s %s\n" "$dir" "$SIZE" "$PERMISSIONS" "$OWNER"
  fi
done

