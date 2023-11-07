# modules/api_gateway/outputs.tf

output "ev4rent_api_gateway_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.ev4rent_api_gateway.id
}
