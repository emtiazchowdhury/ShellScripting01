#!/bin/bash

file=1.txt

if [ -s "$file" ]; then
    echo "File is not a empty"
else
    echo "File is empty"
fi