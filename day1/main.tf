# data -> when you want to refrence exusting resources use data block
# resource block 


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "sub-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.15.0/24"
  tags = {
    Name = "Ashraf-Subnet1"
  }
}
