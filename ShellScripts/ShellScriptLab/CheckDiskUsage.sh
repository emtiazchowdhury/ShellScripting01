#!/bin/bash
#Scenario 7: Check Disk Usage
#Explanation: This script checks the disk usage of the root directory.
#If the usage exceeds a certain threshold (e.g., 80%), it prints a warning message.

# Define the threshold
THRESHOLD=50

# Get the current disk usage
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# | means connect one command to another
#df=disk usage
#du=disk usage
#awk=select data from file or the output from other processes
#grep=Search inside of file by keyword provided

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage $USAGE is above $THRESHOLD%."
else
    echo "Disk usage is $USAGE is below $THRESHOLD%."
fi



