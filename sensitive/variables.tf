variable "access_key" {
  description = "Value of the Access key for AWS"
  type        = string
}

variable "secret_key" {
  description = "Value of the Secret Key for AWS"
  type        = string
}

variable "my_secret_key" {
  type    = string
  default = "defaultsecretkey"
}

output "secret_key_output" {
  value     = var.my_secret_key
  sensitive = true
}
