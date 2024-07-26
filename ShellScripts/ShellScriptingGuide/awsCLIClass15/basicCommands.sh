#!/bin/bash

#Verify the installation
# awsCLI=$(aws --version)
# echo "Your version is: $awsCLI"

#Basic AWS CLI Commands

# #List S3 Buckets
# listS3Bucket=$(aws s3 ls)
# echo "Below are the list of your buckets in s3: $listS3Bucket"

#Upload file to s3 bucket
uploadFiletoS2Bucket="$(aws s3 cp list.txt s3://mytestbucket45184/)"
echo "File $uploadFiletoS2Bucket uploaded to bucket"

# #List IAM users
# listofIMAUsers="$(aws iam list-users --output json)"
# echo listofIMAUsers

# Make s3 bucket 
# aws s3 mb s3://mytestbucket45184

# resCreateBucket="$(aws s3 mb s3://"$1")"
# echo "Bucket named $resCreateBucket successfully created in s3"

#Describe EC2 Instances
# myec2Instance="$(aws ec2 describe-instances)"
# echo "Below are the list of your buckets in ec2 instances: $myec2Instance"


# BUCKET_NAME="mytestbucket45184"

# OBJECTS=$(aws s3api list-objects --bucket $BUCKET_NAME --query "Contents[].Key" --output text)

# for OBJECT in $OBJECTS; do
#     echo "Deleting $OBJECT from $BUCKET_NAME"
#     aws s3 rm s3://$BUCKET_NAME/$OBJECT
# done


grep 'Apple' list.txt



