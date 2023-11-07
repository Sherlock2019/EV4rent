# main.tf

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "ec2" {
  source          = "./modules/ec2"
  instance_type   = var.instance_type
  ami_id          = var.ami_id
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnets
}
