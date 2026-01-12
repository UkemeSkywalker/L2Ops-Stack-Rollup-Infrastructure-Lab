output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.l2_rollup_node.instance_id
}

output "public_ip" {
  description = "Public IP address of the instance"
  value       = module.l2_rollup_node.public_ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}