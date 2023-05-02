provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_ssm_parameter" "example" {
  name  = "example_parameter"
  type  = "SecureString"
  value = "super_secret_password"
  tags  = {
    Environment = "production"
  }

  # Set sensitive to true to mask the parameter value in Terraform output and logs
  sensitive = true
}

