#!/bin/bash

number1=1
number2=2
file=example.txt

if [ -e "$file" ]; then
    echo "$file exist"
else
    echo "$file doesnt exist"
fi

if [ "$number1" -gt "$number2" ]; then
    echo "$number1 is greater than $number2"
else
    echo "$number1 is not greater than $number2"
fi


