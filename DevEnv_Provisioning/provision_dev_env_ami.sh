#!/usr/bin/env bash

packer build -var 'aws_access_key=AKIAISYPN2224DGOU5BQ' -var 'aws_secret_key=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' -var 'region=ap-southeast-1' -var 'resource_tag_name=resource-group' -var 'resource_tag_value=dev-env' -var 'git_password=Letmein123' build_dev_env_image.json

terraform plan -var "aws_region=ap-southeast-1" -var "ami_id=$(python library.py manifest.json)"

terraform apply -var "aws_region=ap-southeast-1" -var "ami_id=$(python library.py manifest.json)"

ssh $(terraform output dev_env_ec2_public_ip) -l ec2-user -i ../Personal_Online_Dev_Env.pem