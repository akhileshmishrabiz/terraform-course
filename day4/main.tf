

# DRY -> do not repeat 
# count, for_each 


########## Count usage ####################
# resource "aws_instance" "web" {
#   count = length( local.vm_tags)
#   ami           = "ami-013e83f579886baeb"
#   instance_type = "t3.micro"

#   tags = {
#     Name =  local.vm_tags[count.index]
#   }
# }


# {key: "value", key1: "value2"}

##########  for_each   ####
# resource "aws_instance" "web" {
#   for_each = toset(local.vm_tags)
#   ami           = "ami-013e83f579886baeb"
#   instance_type = "t3.micro"

#   tags = {
#     Name =  each.value
#   }
# }


# resource "aws_instance" "web" {
#   for_each = toset(local.vm_name)
#   ami           = "ami-013e83f579886baeb"
#   instance_type = "t3.micro"

#   tags = {
#     Name =  each.value,
#     owner = local.vm_owner[each.index]
#   }
# }



# resource "aws_instance" "web" {
#   for_each = var.vmandowner
#   ami           = "ami-013e83f579886baeb"
#   instance_type = "t3.micro"

#   tags = {
#     Name =  each.value,
#     owner = each.key
#   }
# }

# # formatlist("${var.project_name}-%s", var.vm_tags)


# locals {
#  vm_name = [ for owner, vm in var.vmandowner : vm ]
#  vm_owner = [ for owner, vm in var.vmandowner : owner ]

# }

# output "vm_tags" {
#   value = local.vm_name
# }
# output "vm_owner" {
#   value = local.vm_owner
# }
# locals {
#   original_map = {
#     key1 = "value1"
#     key2 = "value2"
#     key3 = "value3"
#   }

#   cloned_map = [ for k, v in local.original_map : v ]
# }

# output "test" {
#   value = local.cloned_map
# }

resource "aws_s3_bucket" "example" {
  bucket = var.Environment == "prod" ? "mybucket-incourse-test-bucket-prod" : "mybucket-incourse-test-bucket-non-prod"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}