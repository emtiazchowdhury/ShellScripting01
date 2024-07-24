#!/bin/bash

file=fileexist.sh

if [ -r "$file" ]; then
    echo "File is a redable"
else
    echo "File is readable"
fi