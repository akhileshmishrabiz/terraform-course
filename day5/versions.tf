# amazon linux machine
# sudo yum install -y yum-utils shadow-utils
# sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
# sudo yum -y install terraform
# terraform --version

terraform {
  required_version = "1.8.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}


terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
