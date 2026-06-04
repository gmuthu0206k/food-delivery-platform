output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_app_subnets_ids" {
  description = "Private APP SubnetID"
  value       = module.vpc.private_app_subnets_ids
}

output "private_data_subnets_ids" {
  description = "Private Data SubnetID"
  value       = module.vpc.private_data_subnets_ids
}
