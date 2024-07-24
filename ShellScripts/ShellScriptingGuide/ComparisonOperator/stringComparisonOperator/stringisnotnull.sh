#!/bin/bash

a=qqwewer

if [ -n "$a" ]; then
    echo "String $a is not null(not empty)"
else
    echo "String $a is null(empty)"
fi

