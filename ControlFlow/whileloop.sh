#!/bin/bash

number=1

while [ "$number" -le 10 ]; do
if [ "$number" -le 10 ]; then
    echo "number is still less than input"
fi
    echo "Your number is: $number"
    ((number++))
done
echo "Exiting while loop"

# if [ "$number" -le 10 ]; then
#     echo "number is still less than input"
# else
#     echo "number is not less than input"
# fi

