#!/bin/bash
#Scenario 8: Check Available Memory
#Explanation: This script checks the available memory on the system.
#If the available memory is below a certain threshold (e.g., 500MB), it prints a warning message.

# Define the threshold in MB
THRESHOLD=500

# Get the available memory in MB
AVAILABLE=$(free -m | grep Mem | awk '{ print $7 }')

if [ "$AVAILABLE" -lt "$THRESHOLD" ]; then
    echo "Warning: Available memory is "$AVAILABLE" and its below $THRESHOLD MB."
else
    echo "Available memory is "$AVAILABLE" and is above $THRESHOLD MB."
fi