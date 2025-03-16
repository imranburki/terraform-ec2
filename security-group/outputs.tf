output "security_group_id" {
  value       = aws_security_group.ec2_security_group.id  # Correct the reference here
  description = "The ID of the security group"
}
