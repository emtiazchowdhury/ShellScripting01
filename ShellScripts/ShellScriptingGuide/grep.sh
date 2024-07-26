#!/bin/bash

#echo "some file content" | tee outputfile
#grep -i "Apples" list.txt
BUCKET_NAME="my-bucket"
THRESHOLD=1000000000 # 1GB in bytes

until [ "$(aws s3api list-objects --bucket $BUCKET_NAME --query "sum(Contents[].Size)" --output text)" -gt $THRESHOLD ]; do
    echo "Bucket size is below threshold. Checking again in 10 seconds..."
    sleep 10
done