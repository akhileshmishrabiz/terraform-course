
# resource "aws_instance" "web" {
#   ami               = data.aws_ami.amazon_linux.id
#   instance_type     = var.instance_type
#   availability_zone = var.availability_zone
#   subnet_id         = aws_subnet.mohit.id
#   security_groups   = [aws_security_group.allow_ssh.id] # implict dependency 
#   key_name          = "devops-class"

#   tags = merge(
#     local.common_tags,
#     tomap({"Name" = "${local.prefix}-adsfs-${local.environment}"}),
#   )

# }

module "ec2" {
  source = "./modules/ec2"
   ami               = data.aws_ami.amazon_linux.id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  subnet_id         =  aws_subnet.mohit.id
  security_groups   = [aws_security_group.allow_ssh.id] # implict dependency 
  key_name          = "devops-class"

  tags = merge(
    local.common_tags,
    tomap({"Name" = "${local.prefix}-adsfs-${local.environment}"}),
  )

}






# provisiners 

# local ->  execute local command on machine where you run terraform
# file -> copy files from local machine to remote
# remote -> run commands on remote machine.



