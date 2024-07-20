#!/bin/bash
#Scenario 10: Check if a Package is Installed
#Explanation: This script checks whether a specific package (e.g., git) is installed.
#If the package is installed, it prints a message saying so.
#Otherwise, it prints a message saying the package is not installed.


# Define the package to check
PACKAGE="git"

if dpkg -l | grep -q "$PACKAGE"; then
    echo "The package $PACKAGE is installed."
else
    echo "The package $PACKAGE is not installed."
fi