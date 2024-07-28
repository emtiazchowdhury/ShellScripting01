#!/bin/bash

#commnand to check if aws s3 bucket exist
local_directory="/home/ec2-user/workspace/ShellScripting01/ShellScripts/ShellScriptingGuide/AWSServiceExample/workspace"
aws_directory="modernaapp"

#First we will check if s3 buckt exist
#Then We will Copy local_drectory to aws_directory recursively

if [ -d "$local_directory" ]; then
    aws s3 sync $local_directory s3://$aws_directory
    echo "backup completed"
else 
    echo "$local_directory doesnt exist"
fi  
