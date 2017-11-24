# Configure Terragrunt to use DynamoDB for locking
lock = {
  backend = "dynamodb"
  config {
    state_file_id = "phuha_dev_env_lock_table"
  }
}

# Configure Terragrunt to automatically store tfstate files in S3
remote_state = {
  backend = "s3"
  config {
    encrypt = "true"
    bucket = "phuha_dev_env_terraform_state"
    key = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

aws_region = "ap-southeast-1"
ami_id = "ami-08d19b6b"
availability_zone = "ap-southeast-1b"
instance_type = "t2.micro"
key_name = "Personal_Online_Dev_Env"
subnet_id = "subnet-51df7a18"
vpc_security_group_ids = ["sg-be5d2ad8"]
associate_public_ip_address = true

resource_tags = {
  "Name" = "Phu Ha DevOps Env",
  "Environment Group" = "Development",
  "Empty" = "Empty",
  "Empty" = "Empty",
  "Empty" = "Empty",
  "Empty" = "Empty",
  "Empty" = "Empty",
  "Empty" = "Empty",
  "Empty" = "Empty",
  "Empty" = "Empty"
}