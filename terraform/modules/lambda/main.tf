# modules/lambda/main.tf

resource "aws_lambda_function" "ev4rent_lambda_function" {
  function_name = var.ev4rent_lambda_function_name
  handler       = var.ev4rent_lambda_handler
  role          = var.ev4rent_lambda_role_arn
  runtime       = var.ev4rent_lambda_runtime

  # Define the source code location, environment variables, etc. here
}

# Define other Lambda resources like Event Source Mappings, Permissions, etc. here
