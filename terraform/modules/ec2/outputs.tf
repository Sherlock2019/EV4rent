# modules/ec2/outputs.tf

output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = aws_instance.ec2_instance.*.id
}
