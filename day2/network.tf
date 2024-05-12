# data -> when you want to refrence exusting resources use data block
# resource block 


resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
    cidr_block = var.vpc_cidr

    tags = {
    Name = "main-vpc"
  }
} 

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "mohit" {
  vpc_id = aws_vpc.main.id   # Implicit dependency 
  cidr_block = var.subnet_cidr["subnet1"]
   map_public_ip_on_launch = true
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name[0]
  }

  depends_on = [ aws_vpc.main ] # explict dependency 
}

resource "aws_subnet" "meet" {
  vpc_id = aws_vpc.main.id   # Implicit dependency 
  cidr_block = var.subnet_cidr["subnet2"]
   map_public_ip_on_launch = true
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name[1]
  }

  depends_on = [ aws_vpc.main ] # explict dependency 
}

# route table
resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id
}
# attach route to subnet 
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.mohit.id
  route_table_id = aws_route_table.example.id
}

resource "aws_route" "r" {
  route_table_id            = aws_route_table.example.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.gw.id
}