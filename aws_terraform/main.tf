terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "app_server" {
  source = "./modules/application"

  ec2_instance_type = "t2.micro"
  ami               = "ami-0194c3e07668a7e36"
  tags = {
    Name = "server for web"
    Env  = "dev"
  }
}
