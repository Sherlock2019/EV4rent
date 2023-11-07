# modules/ec2/main.tf

resource "aws_instance" "ec2_instance" {
  count         = length(var.public_subnets)
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = element(var.public_subnets, count.index)

  tags = {
    Name = "ec2_instance-${count.index}"
  }
}

# Outputs the instance IDs for use by other resources or modules
output "instance_ids" {
  value = aws_instance.ec2_instance.*.id
}
