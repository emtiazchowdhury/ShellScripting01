#!/bin/bash
#Scenario 9: Check CPU Load
#Explanation: This script checks the current CPU load.
#If the load exceeds a certain threshold (e.g., 1.00), it prints a warning message.


# Define the threshold
THRESHOLD=1.00

# Get the current CPU load
LOAD=$(uptime | awk -F 'load average:' '{ print $2 }' | cut -d, -f1 | sed 's/ //g')

if (( $(echo "$LOAD > $THRESHOLD" | bc -l) )); then
    echo "Warning: CPU load is above $THRESHOLD."
else
    echo "CPU load is below $THRESHOLD."
fi