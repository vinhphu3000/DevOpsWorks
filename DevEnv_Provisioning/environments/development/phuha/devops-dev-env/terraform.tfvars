terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
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