output "subnet_id" {
  value = aws_subnet.name.id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}