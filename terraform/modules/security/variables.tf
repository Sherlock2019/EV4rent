# modules/security/variables.tf

variable "ev4rent_security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "EV4rent-Security-Group"
}

variable "ev4rent_vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}
