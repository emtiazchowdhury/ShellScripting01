#!/bin/bash

a=Tom
b=James

if [[ "$a" < "$b" ]]; then
    echo "$a is less than $b"
else
    echo "$a is not less than $b"
fi
