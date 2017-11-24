output "framework_devops_dev_env_instance_id" {
  value = "${module.framework_devops_dev_env.core_custom_ami_ec2_instance_id}"
}

output "framework_devops_dev_env_public_ip" {
  value = "${module.framework_devops_dev_env.core_custom_ami_ec2_public_ip}"
}

output "framework_devops_dev_env_private_ip" {
  value = "${module.framework_devops_dev_env.core_custom_ami_ec2_private_ip}"
}