variable "aws_region" {
  description = "The AWS Region that EC2 instance built against"
  default = ""
}

variable "ami_id" {
  description = "The AMI ID used to build EC2 instance"
  default = ""
}

variable "availability_zone" {
  description = "The Availability Zone that newly created EC2 instance works on"
}

variable "instance_type" {
  description = "The instance type used for hosting AMI"
  default = ""
}

variable "monitoring" {
  description = "Should the newly created EC2 instance monitored"
  default = false
}

variable "subnet_id" {
  description = "The Subnet ID that newly created EC2 instance works on"
  default = ""
}

variable "vpc_security_group_ids" {
  description = "The VPC Security Group ID that newly created EC2 instance works on"
  type = "list"
  default = []
}

variable "associate_public_ip_address" {
  description = "Should newly created EC2 instance have public ip address"
  default = false
}

variable "volume_type" {
  description = "What kinds of volume type attached to newly created EC2 instance"
  default = ""
}

variable "volume_size" {
  description = "What size of volume should be attached to newly created EC2 instance"
}

variable "delete_on_termination" {
  description = "Should newly created EC2 instance have public ip address"
}

variable "key_name" {
  description = "AWS Secret Key used for SSH to newly created EC2 instance"
  default = ""
}

variable "resource_tags" {
  description = "The Resource Tag Key"
  type = "map"
  default = {
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
    "Empty" = "Empty"
  }
}