terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket  = "phuha-dev-env-terraform-state-${get_aws_account_id()}"
      key     = "${path_relative_to_include()}/terraform.tfstate"
      region  = "${get_env("TF_VAR_region", "ap-southeast-1")}"
      encrypt = true
      lock_table = "phuha-dev-env-lock-table"
    }
  }
}