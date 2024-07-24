#!/bin/bash

file=fileexist.sh

if [ -f "$file" ]; then
    echo "File is a regular file"
else
    echo "File is not regular file"
fi
