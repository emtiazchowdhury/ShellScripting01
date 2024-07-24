#!/bin/bash
#Explanation: This script checks whether the current user is root.
#If the user is root, it prints a message saying so.
#Otherwise, it prints a message saying the user is not root.

if [ "$EUID" -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are not running this script as root."
fi