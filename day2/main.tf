
resource "aws_instance" "web" {
  ami           =var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  subnet_id = aws_subnet.mohit.id
  security_groups = [aws_security_group.allow_ssh.id] # implict dependency 
   key_name               = "devops-class"

  tags = {
    Name = "terraform-ec2-1"
  }
  
  connection {
    type        = "ssh"
    user        = "ec2-user"
    password    = ""
    private_key = file("devops-class.pem")
    host        = self.public_ip
  }

  provisioner "local-exec" {
    command = "echo hello > hello.txt"
  }

  provisioner "file" {
    source      = "hello.txt"
    destination = "/home/ec2-user"

  }
}


# provisiners 

# local ->  execute local command on machine where you run terraform
# file -> copy files from local machine to remote
# remote -> run commands on remote machine.