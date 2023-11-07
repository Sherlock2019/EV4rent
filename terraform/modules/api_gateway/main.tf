# modules/api_gateway/main.tf

resource "aws_api_gateway_rest_api" "ev4rent_api_gateway" {
  name        = var.ev4rent_api_gateway_name
  description = "API Gateway for EV4rent services"

  # Define resources, methods, etc. here
}

# Define other API Gateway resources like Resources, Methods, Stages, etc. here
