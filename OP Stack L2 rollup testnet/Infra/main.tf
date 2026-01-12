module "vpc" {
  source = "./modules/vpc"
  
  vpc_name = var.vpc_name
}

module "l2_rollup_node" {
  source = "./modules/ec2"
  
  instance_name      = var.instance_name
  key_name           = var.key_name
  vpc_id             = module.vpc.vpc_id
  subnet_id          = module.vpc.public_subnet_id
  allowed_tcp_ports  = var.allowed_tcp_ports
  allowed_udp_ports  = var.allowed_udp_ports
}