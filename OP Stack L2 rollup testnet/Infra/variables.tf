variable "allowed_tcp_ports" {
  description = "List of TCP ports to allow"
  type        = list(number)
  default     = [8545, 8546]
}

variable "allowed_udp_ports" {
  description = "List of UDP ports to allow"
  type        = list(number)
  default     = []
}

variable "region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "opstack-l2-rollup-vpc"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "opstack-l2-rollup-node"
}

variable "key_name" {
  description = "AWS key pair name for SSH access"
  type        = string
  default     = null
}