provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "core_custom_generated_instance" {
  ami                         = "${var.ami_id}"
  availability_zone           = "${var.availability_zone}"
  ebs_optimized               = false
  instance_type               = "${var.instance_type}"
  monitoring                  = "${var.monitoring}"
  key_name                    = "${var.key_name}"
  subnet_id                   = "${var.subnet_id}"
  vpc_security_group_ids      = "${var.vpc_security_group_ids}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  source_dest_check           = true

  root_block_device {
    volume_type           = "${var.volume_type}"
    volume_size           = "${var.volume_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }

  tags = "${var.resource_tags}"
}