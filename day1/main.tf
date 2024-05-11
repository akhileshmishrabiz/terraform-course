# data -> when you want to refrence exusting resources use data block
# resource block 


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

    tags = {
    Name = "main"
  }

  
} 

resource "aws_subnet" "mohit" {
  vpc_id     = "vpc-059a338a887b0607a"
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "mohitsubnet"
  }
}