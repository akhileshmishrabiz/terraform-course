variable "vpc_cidr" {
  type = string
  description = "vpc cidr block "
}

variable "ami" {
  type = string
  description = "ami to be used for ec2"
  
}

variable "instance_type" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "subnet_cidr" {
  type = map()
  default = {
    subnet1: "10.10.1.0/24",
    subnet2: "10.10.2.0/24"
  }
}

variable "subnet_name" {
  type =  list() 
  default = [
    "mohit",
    "meet"
  ] 
}










