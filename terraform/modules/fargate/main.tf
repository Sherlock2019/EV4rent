# modules/fargate/main.tf

# Create an EKS Fargate Profile if EKS is enabled
resource "aws_eks_fargate_profile" "eks_fargate_profile" {
  count = var.enable_eks ? 1 : 0

  cluster_name           = var.cluster_name
  fargate_profile_name   = var.fargate_profile_name
  pod_execution_role_arn = var.pod_execution_role_arn
  subnet_ids             = var.subnet_ids

  selector {
    namespace = var.k8s_namespace
  }

  # Additional selectors can be added here
}

# Create an ECS Task Definition for Fargate if ECS is enabled
resource "aws_ecs_task_definition" "ecs_fargate_task" {
  count = var.enable_ecs ? 1 : 0

  family                   = var.family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.cpu
  memory                   = var.memory
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn

  container_definitions = var.container_definitions
}
