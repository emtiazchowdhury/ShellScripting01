#!/bin/bash
#Scenario 6: Check if a Service is Running
#Explanation: This script checks whether a service (e.g., sshd) is running.
#If the service is running, it prints a message saying so.
#Otherwise, it prints a message saying the service is not running.

#Below is not working for if condition. Maybe not available for windows.


SERVICE="sshd"

if systemctl is-active --quiet "$SERVICE"; then
    echo "The $SERVICE service is running."
else
    echo "The $SERVICE service is not running."
fi