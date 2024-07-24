#!/bin/bash

a=5
b=10
file="example.txt"
string1="hello"
string2="world"

# Numeric Comparison
if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
fi

# String Comparison
if [ "$string1" != "$string2" ]; then
    echo "$string1 is equal to $string2"
fi

# File Comparison
if [ -e "$file" ]; then
    echo "$file exist"
else
    echo "$file doesnt exist"
fi

# String Comparison
if [ -z "$string1" ]; then
    echo "$string1 is empty"
else
    echo "$string1 is not empty"
fi
