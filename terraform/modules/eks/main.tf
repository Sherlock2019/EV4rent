# modules/eks/main.tf

resource "aws_eks_cluster" "ev4rent_eks_cluster" {
  name     = var.ev4rent_eks_cluster_name
  role_arn = var.ev4rent_eks_cluster_role_arn

  vpc_config {
    subnet_ids = var.ev4rent_eks_subnet_ids
  }

  # Define other EKS cluster configurations here
}

# Define EKS Node Groups, Fargate Profiles, etc. here
