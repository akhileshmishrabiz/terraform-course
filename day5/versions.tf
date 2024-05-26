
terraform {
  required_version = "1.6.0"
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
