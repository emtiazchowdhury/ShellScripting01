#!/bin/bash
#Scenario 5: Check if a String is Empty
#Explanation: This script checks whether a string is empty.
#If the string is empty, it prints a message saying so.
#Otherwise, it prints a message saying the string is not empty.

# Define a string
STRING="A"

if [ -z "$STRING" ]; then
  echo "String is empty"
else
  echo "String is NOT empty"
fi