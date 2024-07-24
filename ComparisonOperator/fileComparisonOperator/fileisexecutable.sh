#!/bin/bash

file=fileexist.sh

if [ -x "$file" ]; then
    echo "File is executable"
else
    echo "File is not executable"
fi