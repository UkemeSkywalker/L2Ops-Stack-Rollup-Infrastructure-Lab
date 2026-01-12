variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "m5.xlarge"
}

variable "volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 1024
}

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

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}