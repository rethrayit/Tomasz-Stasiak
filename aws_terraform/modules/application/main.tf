
provider "aws" {
  region     = var.region
  access_key = ""
  secret_key = ""
  profile    = "default"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.ec2_instance_type
  tags          = var.tags
}
