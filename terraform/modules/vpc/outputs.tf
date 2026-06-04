output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value = [
    for subnet in aws_subnet.public_subnet : subnet.id
  ]
}

output "private_app_subnets_ids" {
  description = "Private APP SubnetID"
  value = [
    for subnet in aws_subnet.private_app_subnet : subnet.id
  ]
}

output "private_data_subnets_ids" {
  description = "Private Data SubnetID"
  value = [
    for subnet in aws_subnet.private_data_subnet : subnet.id
  ]
}
