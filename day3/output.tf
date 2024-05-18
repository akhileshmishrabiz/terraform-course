# output "ec2_pubip" {

#   description = "public ip of vm"
#   value = aws_instance.web.public_ip
# }

# output "ami" {
#   value = data.aws_ami.amazon_linux.id
# }


locals {


  prefix = "main"
  environment = "dev"
  first_name  = "Akhilesh"
  second_name = "Mishra"

  common_tags = {

    name  = join(" ", [local.first_name, local.second_name])
    place = "India"
    team  = "Devopsteam"
    repo  = "terraform-course-day3"
  }
}


