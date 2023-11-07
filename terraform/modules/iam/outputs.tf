# modules/iam/outputs.tf

output "ev4rent_iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.ev4rent_iam_role.arn
}
