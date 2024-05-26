variable "bucket" {
    type = list(string)
    default = [ "bucket1", "bucket2", "bucket3" ]
}

variable "vm_tags" {
  type = list(string)
  default = [ "hello-world" , "hellow-india", "hellow-bangalore"]
}

variable "project_name" {
    type = string
    default = "devopsbatch-11"
}

variable "vmandowner" {
    type = map(string)
    default = {
      Akhilesh = "Akhilesh-vm",
      mohit = "mohit-vm",
      shweta = "shweta-vm",
      ashraf = "ashraf-vm"
    }
  
}


variable "if_s3_needed" {
  type = bool
  default = false
}

variable "Environment" {
  type = string
  default = "dev"
}