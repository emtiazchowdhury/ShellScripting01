#!/bin/bash

file=nonwritablefile.pdf

if [ -r "$file" ]; then
    echo "File is writable"
else
    echo "File is not writable"
fi