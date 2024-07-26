#!/bin/bash

# shellcheck disable=SC2188
<<comment
echo yuytug
tfuyglhg
rdiytfutf
comment

#Scenario 10: Check if a Package is Installed
#Explanation: This script checks whether a specific package (e.g., git) is installed.
#If the package is installed, it prints a message saying so.
#Otherwise, it prints a message saying the package is not installed.

#execute this command to see all the packages installed: yum list --installed

# Define the package to check
PACKAGE=git

if yum --install | grep -q "$PACKAGE"; then
    echo "The package $PACKAGE is installed."
else
    echo "The package $PACKAGE is not installed."
fi