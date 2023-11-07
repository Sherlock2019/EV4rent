# modules/fargate/variables.tf

variable "enable_eks" {
  description = "Set to true to enable EKS Fargate profile creation"
  type        = bool
  default     = false
}

variable "enable_ecs" {
  description = "Set to true to enable ECS Fargate task definition creation"
  type        = bool
  default     = false
}

# Add all the other variables from the previous example here
