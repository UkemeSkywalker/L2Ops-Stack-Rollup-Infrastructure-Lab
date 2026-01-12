variable "allowed_tcp_ports" {
  description = "List of TCP ports to allow"
  type        = list(number)
  default     = [8545, 8546, 8547, 8548, 8551, 8560, 9222, 30303]
}

variable "allowed_udp_ports" {
  description = "List of UDP ports to allow"
  type        = list(number)
  default     = [9222, 30303]
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

variable "ssh_public_key_path" {
  description = "Path to your local SSH public key file"
  type        = string
  default     = "~/.ssh/op-node-key.pub"
}