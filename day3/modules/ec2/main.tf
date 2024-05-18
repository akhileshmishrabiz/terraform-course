# which terraform version -> terraform --version -> v 1.3.7
# which provider -> aws -> 5.48.0 


terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}





resource "aws_instance" "web" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  subnet_id         = var.subnet_id
  security_groups   = var.security_groups # implict dependency 
  key_name          = var.key_name

  tags = var.tags

}
