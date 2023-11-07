# modules/ecs/variables.tf

variable "ev4rent_ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "EV4rent-ECS-Cluster"
}
