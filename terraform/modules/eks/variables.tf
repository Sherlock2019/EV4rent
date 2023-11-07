# modules/eks/variables.tf

variable "ev4rent_eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "EV4rent-EKS-Cluster"
}

variable "ev4rent_eks_cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "ev4rent_eks_subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type        = list(string)
}
