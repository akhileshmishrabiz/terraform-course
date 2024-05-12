
resource "aws_instance" "web" {
  ami           =var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  subnet_id = aws_subnet.mohit.id
  security_groups = [aws_security_group.allow_ssh.id] # implict dependency 

  tags = {
    Name = "terraform-ec2-1"
  }
}