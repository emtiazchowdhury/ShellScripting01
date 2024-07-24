#!/bin/bash

file=fileisaregualrfile.sh

if [ -e "$file" ]; then
    echo "File exist"
else
    echo "File doesnt exist"   
fi

