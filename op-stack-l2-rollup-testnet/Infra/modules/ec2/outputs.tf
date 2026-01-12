output "instance_id" {
  value = aws_instance.op_stack_node.id
}

output "public_ip" {
  value = aws_eip.op_stack_node_static_ip.public_ip
}

output "private_ip" {
  value = aws_instance.op_stack_node.private_ip
}

output "security_group_id" {
  value = aws_security_group.op_stack_node.id
}