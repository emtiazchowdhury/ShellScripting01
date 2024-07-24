#!/bin/bash

names=("James" "Robert" "David" "Ron")

# for name in "${names[@]}"; do
#     echo "Hello $name"
# done

fruits=("Apple" "Pear" "Straberry" "Blackberry" "Blueberry")

for fruit in "${fruits[@]}"; do
    echo "I like $fruit!"
    for name in "${names[@]}"; do
        echo "My name is $name!"
    done
done

for name in Alice Jame Don; do
    echo "$name"
done


for number in {1..10}; do
    echo "$number"
done

