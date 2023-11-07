# modules/vpc/main.tf

resource "aws_vpc" "ev4rent_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "ev4rent_vpc"
  }
}

# Define subnets, route tables, internet gateways, etc. here

# Outputs the VPC ID for use by other modules
output "vpc_id" {
  value = aws_vpc.ev4rent_vpc.id
}

# Outputs the public subnets for use by other modules
output "public_subnets" {
  value = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
}
