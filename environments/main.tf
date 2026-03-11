module "vpc" {
    source = "../module/vpc"
    variable "vpc_cidr" {}
    variable "subnet_cidr" {}
}

module "ec2" {
    source = "../module/ec2"
    variable "instance_type" {}
    variable "ami_id" {}
    variable "subnet_id" {}
    variable "vpc_security_group_ids" {}
    

  
}

module "s3" {
    source = "../module/S3"
    variable "bucket_name" {}
  
}