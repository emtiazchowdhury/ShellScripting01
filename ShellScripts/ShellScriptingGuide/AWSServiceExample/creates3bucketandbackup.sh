#!/bin/bash

<<comment
 1. Check abcd S3 Bucket does exists or not
 2. If exists return 0 and do not create bucket
 2.a backup local directory to s3
 3. If does not exists return 1 and create a new bucket
 3.a backup local directory to s3
 #Run Command: sh creates3bucketandbackup.sh bucketName
comment

function bucket_exists {
  local aws_directory=$1
  local_directory="/home/ec2-user/workspace/ShellScripting01/ShellScripts/ShellScriptingGuide/AWSServiceExample/workspace"
    
  #Below line will get the current status of the bucket from s3
  RESPONSE=$(aws s3 ls s3://"$aws_directory" 2>&1 | grep "\<NoSuchBucket\>" |awk '{print $4}' | sed 's/[()]//g')
  if [ "$RESPONSE" = "NoSuchBucket" ]; then
    echo "Current bucket status: $RESPONSE"
    echo "Since there is $RESPONSE named $1, we can create a Bucket named $1"
    make_bucket_response=$(aws s3 mb s3://"$aws_directory")
    echo "Bucket created with name: $make_bucket_response"
    
    if [ -d "$local_directory" ]; then
    aws s3 sync $local_directory s3://$aws_directory
    echo "backup completed"
    else
    echo "$local_directory doesnt exist"
    fi
    return 0

  else
    echo "Bucket named $1 already exist in your s3, please try again with an unique name."
    if [ -d "$local_directory" ]; then
    aws s3 sync $local_directory s3://$aws_directory
    echo "backup completed"
    else
    echo "$local_directory doesnt exist"
    fi
    return 1
  fi
}
bucket_exists "$1"