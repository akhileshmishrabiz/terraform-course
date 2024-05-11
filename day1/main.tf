# data -> when you want to refrence exusting resources use data block
# resource block 


resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
    cidr_block = var.vpc_cidr

    tags = {
    Name = "main-vpc"
  }

} 

resource "aws_subnet" "mohit" {
  vpc_id = aws_vpc.main.id   # Implicit dependency 
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "mohitsubnet"
  }

  depends_on = [ aws_vpc.main ] # explict dependency 
}