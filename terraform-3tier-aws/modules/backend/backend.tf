 terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "3tier/terraform.tfstate"
    region = "ap-south-1"
  }
}
