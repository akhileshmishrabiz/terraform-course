# data -> when you want to refrence exusting resources use data block
# resource block 


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

    tags = {
    Name = "main"
  }
} 