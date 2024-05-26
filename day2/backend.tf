
terraform {
  backend "s3" {
    bucket = "366140438193-terraform-state"
    key    = "terraform101/akhilesh/terraform.tfstate"
    region = "ap-south-1"
  }
}
