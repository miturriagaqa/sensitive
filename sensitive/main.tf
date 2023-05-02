provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-0b301ce3ce347599c"
  instance_type = "t2.micro"

  # Sensitive attribute set to true
  user_data = base64encode(data.template_file.init.rendered)
  sensitive = true
}

data "template_file" "init" {
  template = file("${path.module}/init.sh")

  vars = {
    # Variables used in the script
    region = var.region
  }
}

