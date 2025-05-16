output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}

output "route_table_id" {
  value = aws_route_table.main.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "security_group_id" {
  value = aws_security_group.main.id
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}