terraform {
  backend "s3" {
    bucket = "ashok-terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}




provider "aws" {
    region = "us-east-1"
  
}