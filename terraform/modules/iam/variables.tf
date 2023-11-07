# modules/iam/variables.tf

variable "ev4rent_iam_role_name" {
  description = "The name of the IAM role"
  type        = string
  default     = "EV4rent-IAM-Role"
}
