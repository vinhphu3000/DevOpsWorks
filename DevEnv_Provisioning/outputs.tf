output "dev_env_ec2_public_ip" {
  value = "${aws_instance.Phu-Ha-Dev_Env.public_ip}"
}

output "dev_env_ec2_private_ip" {
  value = "${aws_instance.Phu-Ha-Dev_Env.private_ip}"
}