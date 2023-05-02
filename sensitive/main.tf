resource "random_password" "example" {
  length = 16
  special = true
}

output "password" {
  value = random_password.example.result
  sensitive = true
}

output "message" {
  value = "Your deployment is complete."
}

variable "my_secret_key" {
  type    = string
  default = "defaultsecretkey"
}

output "secret_key_output" {
  value     = var.my_secret_key
  sensitive = true
}
