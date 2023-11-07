# modules/lambda/variables.tf

variable "ev4rent_lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "EV4rent-Lambda-Function"
}

variable "ev4rent_lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
}

variable "ev4rent_lambda_role_arn" {
  description = "The ARN of the IAM role for the Lambda function"
  type        = string
}

variable "ev4rent_lambda_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
}
