#!/bin/bash

# Author: Aditya Tomar (24BCY10153)

# System Identity Report

# Extract Linux Distro
DISTRO=$(lsb_release -ds)

# Extract Kernel Version
KERNEL=$(uname -r)

# Extract Current User
USER=$(whoami)

# Extract Home Directory
HOME_DIR=$(echo $HOME)

# Extract Uptime
UPTIME=$(uptime -s | cut -d ',' -f 1 | cut -d ' ' -f 2-)

# Extract Current Date/Time
CURRENT_DATE=$(date +'%a %b %d %Y %H:%M:%S %Z')

# Print System Identity Report
printf "================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
"
printf "Linux Distribution: %s
" "$DISTRO"
printf "Kernel Version:     %s
" "$KERNEL"
printf "Current User:       %s
" "$USER"
printf "Home Directory:     %s
" "$HOME_DIR"
printf "System Uptime:      %s
" "$UPTIME"
printf "Current Date/Time:  %s
" "$CURRENT_DATE"
printf "--------------------------------------------------------------------------------
"
printf "Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
"
