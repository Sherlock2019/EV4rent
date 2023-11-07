# modules/ecs/main.tf

resource "aws_ecs_cluster" "ev4rent_ecs_cluster" {
  name = var.ev4rent_ecs_cluster_name
}

# Define ECS Task Definitions, Services, etc. here
