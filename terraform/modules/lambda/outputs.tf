# modules/lambda/outputs.tf

output "ev4rent_lambda_function_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.ev4rent_lambda_function.arn
}
