#!/bin/bash

#echo "first argument $1"
#echo "first argument $2"
#echo "first argument $@"

if [ $# -eq 3 ]; then
    echo "first argument is: $1"
    echo "Second argument is: $2"
    echo "Second argument is: $3"

else
    echo "Please provide exactly two arguments. Number of arguments provided: $# which are as follows: $@"
fi

#execute this command in command line. bash positionalPrameters.sh 5 6 7 8


