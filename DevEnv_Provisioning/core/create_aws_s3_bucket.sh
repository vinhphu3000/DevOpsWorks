#!/usr/bin/env bash




set +e


tf_state_bucket=""


#Check if S3 Terraform state bucket exist 
aws s3 ls s3://${tf_state_bucket} > /dev/null 2>&1

#If S3 Terraform state bucket 
if [ $? -ne 0 ]; then
    print "Creating S3 Terraform state bucket ${tf_state_bucket} - region ${region}..."
fi

