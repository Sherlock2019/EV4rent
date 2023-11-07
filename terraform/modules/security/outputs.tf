# modules/security/outputs.tf

output "ev4rent_security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.ev4rent_security_group.id
}
