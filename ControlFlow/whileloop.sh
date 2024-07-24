#!/bin/bash

INSTANCE_ID="my name is emtiaz. I am learning shell scripting."

while [ "$INSTANCE_ID" != "running" ]; do
    echo "Instance status: $INSTANCE_ID"
done

echo "Instance is now running."