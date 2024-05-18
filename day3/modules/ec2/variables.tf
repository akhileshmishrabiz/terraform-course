variable "ami" {
  type        = string
  description = "ami to be used for ec2"

}

variable "instance_type" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "subnet_id"{
  type = string
}

variable "prefix" {
  type =  string
  default = "main"

}
variable "environment" {
  type = string
  default = "dev"
}
variable "tags" {
  type = map(string)
}

variable "key_name" {
  type = string
}

variable "security_groups" {
  type = list(string)
}




