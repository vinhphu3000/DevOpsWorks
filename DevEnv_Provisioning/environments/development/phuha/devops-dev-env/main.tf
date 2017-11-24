terraform {
  backend "s3" {}
}

module "devops_dev_env" {
  source = "../../../..//framework/devops-dev-env"

  aws_region                    = "${var.aws_region}"
  ami_id                        = "${var.ami_id}"
  availability_zone             = "${var.availability_zone}"
  instance_type                 = "${var.instance_type}"
  monitoring                    = "${var.monitoring}"
  subnet_id                     = "${var.subnet_id}"
  vpc_security_group_ids        = "${var.vpc_security_group_ids}"
  associate_public_ip_address   = "${var.associate_public_ip_address}"
  volume_type                   = "${var.volume_type}"
  volume_size                   = "${var.volume_size}"
  delete_on_termination         = "${var.delete_on_termination}"
  key_name                      = "${var.key_name}"
  resource_tags                 = "${var.resource_tags}"
}