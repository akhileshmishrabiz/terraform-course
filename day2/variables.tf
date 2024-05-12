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