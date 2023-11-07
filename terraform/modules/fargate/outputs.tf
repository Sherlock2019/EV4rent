# modules/fargate/outputs.tf

# Output the EKS Fargate profile ID if EKS is enabled
output "eks_fargate_profile_id" {
  value = var.enable_eks ? aws_eks_fargate_profile.eks_fargate_profile[0].id : ""
}

# Output the ECS Fargate task definition ARN if ECS is enabled
output "ecs_fargate_task_definition_arn" {
  value = var.enable_ecs ? aws_ecs_task_definition.ecs_fargate_task[0].arn : ""
}
