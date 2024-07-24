#!/bin/bash

a=App
b=Don

if [[ "$a" > "$b" ]]; then
    echo "$a is greater than $b"
else
    echo "$a is not greater than $b"
fi  