terraform {
  backend "s3" {
    bucket = "aws-devops-bucket-ash2933"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "ashok"
  }
}




provider "aws" {
    region = "us-east-1"
  
}