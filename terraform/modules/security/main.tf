# modules/security/main.tf

resource "aws_security_group" "ev4rent_security_group" {
  name        = var.ev4rent_security_group_name
  description = "EV4rent security group"
  vpc_id      = var.ev4rent_vpc_id

  # Define security group rules here
}

# Define NACLs, other security group rules, etc. here
