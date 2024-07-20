#!/bin/bash

#Scenario 1: Check if a File Exists
#Explanation: This script checks whether a file named Hello.txt exists in the current directory.
#If it exists, it prints a message saying the file exists.
#Otherwise, it prints a message saying the file does not exist.

# Define the file to check
FILE="Hello.txt"

if [ -e "$FILE" ]; then
    echo "File named $FILE Exist"
else
      echo "File named $FILE doesnt Exist"
fi