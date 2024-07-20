#!/bin/bash
#Scenario 4: Compare Two Numbers
#Explanation: This script compares two numbers, NUM1 and NUM2.
#It prints a message indicating whether NUM1 is greater than NUM2.
NUM1=5
NUM2=4

if [ "$NUM1" -gt "$NUM2" ]; then
    echo "$NUM1 is greater than $NUM2."
else
  echo "$NUM1 is not greater than $NUM2."
fi