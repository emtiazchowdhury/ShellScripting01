#!/bin/bash

a=44
b=55

if [ "$a" -ge "$b" ]; then
    echo "$a is not greater or equal to $b"
else
    echo "$a is greater or equal to $b"
fi