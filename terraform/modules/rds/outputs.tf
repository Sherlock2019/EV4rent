# modules/rds/outputs.tf

output "ev4rent_rds_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.ev4rent_rds_instance.arn
}
