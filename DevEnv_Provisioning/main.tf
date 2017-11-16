provider "aws" {
    region = "${var.aws_region}"
}

resource "aws_instance" "Phu-Ha-Dev_Env" {
    ami                         = "${var.ami_id}"
    availability_zone           = "ap-southeast-1b"
    ebs_optimized               = false
    instance_type               = "m3.medium"
    monitoring                  = false
    key_name                    = "Personal_Online_Dev_Env"
    subnet_id                   = "subnet-51df7a18"
    vpc_security_group_ids      = ["sg-be5d2ad8"]
    associate_public_ip_address = true
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 40
        delete_on_termination = false
    }

    tags {
        "Env_Group" = "Development"
        "Name" = "Phu Ha Dev_Env"
    }
}