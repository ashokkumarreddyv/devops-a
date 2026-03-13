resource "aws_vpc" "name" {
    cidr_block = var.vpc_cidr
    
    tags = {
        name = "vpc"
    }
  
}

resource "aws_subnet" "name" {
    vpc_id = aws_vpc.name.id
    cidr_block = var.subnet_cidr

    tags = {
      name = "public_subnet"
    }
    
  
}

resource "aws_security_group" "ec2_sg" {
  name   = "ec2-security-group"
  vpc_id = aws_vpc.name.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-security-group"
  }
}