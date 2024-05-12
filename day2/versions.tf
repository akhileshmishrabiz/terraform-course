# which terraform version -> terraform --version -> v 1.3.7
# which provider -> aws -> 5.48.0 


terraform {
  required_version = "1.3.7"
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


