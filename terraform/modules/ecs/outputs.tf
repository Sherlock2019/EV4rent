# modules/ecs/outputs.tf

output "ev4rent_ecs_cluster_arn" {
  description = "The ARN of the ECS cluster"
  value       = aws_ecs_cluster.ev4rent_ecs_cluster.arn
}
