# modules/eks/outputs.tf

output "ev4rent_eks_cluster_id" {
  description = "The ID of the EKS cluster"
  value       = aws_eks_cluster.ev4rent_eks_cluster.id
}

output "ev4rent_eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.ev4rent_eks_cluster.endpoint
}

output "ev4rent_eks_cluster_certificate_authority" {
  description = "The certificate authority data for the EKS cluster"
  value       = aws_eks_cluster.ev4rent_eks_cluster.certificate_authority.0.data
}
