output "core_custom_ami_ec2_instance_id" {
  value = "${aws_instance.core_custom_generated_instance.id}"
}

output "core_custom_ami_ec2_public_ip" {
  value = "${aws_instance.core_custom_generated_instance.public_ip}"
}

output "core_custom_ami_ec2_private_ip" {
  value = "${aws_instance.core_custom_generated_instance.private_ip}"
}