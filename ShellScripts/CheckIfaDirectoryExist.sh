#!/bin/bash

#Scenario 2: Check if a Directory Exists
#Explanation: This script checks whether a directory exists at the specified path.
#If the directory exists, it prints a message saying the directory exists.
#Otherwise, it prints a message saying the directory does not exist.

# Define the directory to check
DIR="myDirectory"

if [ -d "$DIR" ]; then
  echo "Directory named $DIR Exist"
else
  echo "Directory named doesn't $DIR Exist"
fi