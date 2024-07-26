#!/bin/bash

nameofSeeds=("pepper" "Squash" "Leafy green" "Fruits")

for seed in "${nameofSeeds[@]}"; do
    echo "I want to grow $seed"
done

REGION=$1

if [ -z "$REGION" ]; then
    echo "Please specify a region."
    exit 1
fi

aws ec2 describe-instances --region $REGION
