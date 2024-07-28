#!/bin/bash

<<comment
 1. Check abcd S3 Bucket does exists or not
 2. If exists return 0 and do not create bucket
 3. If does not exists return 1 and create a new bucket
 #Run Command: sh ReturnExampleWithS3.sh bucketName
comment
function bucket_exists {
  local bucket_name=$1
  
  #Below line will get the current status of the bucket from s3
  RESPONSE=$(aws s3 ls s3://"$bucket_name" 2>&1 | grep "\<NoSuchBucket\>" |awk '{print $4}' | sed 's/[()]//g')
  if [ "$RESPONSE" = "NoSuchBucket" ]; then
    echo "Current bucket status: $RESPONSE"
    echo "Since there is $RESPONSE named $1, we can create a Bucket named $1"
    make_bucket_response=$(aws s3 mb s3://"$bucket_name")
    echo "Bucket created with name: $make_bucket_response"
    return 0
  else
    echo "Bucket named $1 already exist in your s3, please try again with an unique name."
    return 1
  fi
}
bucket_exists "$1"