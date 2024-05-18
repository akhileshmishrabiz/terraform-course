data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {

    name   = "name"
    values = ["al2023-ami-*-kernel-6.1-x86_64"]
  }
  #owners = ["amazon"]

}
