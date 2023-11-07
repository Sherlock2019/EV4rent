# modules/rds/main.tf

resource "aws_db_instance" "ev4rent_rds_instance" {
  allocated_storage    = var.ev4rent_rds_allocated_storage
  storage_type         = var.ev4rent_rds_storage_type
  engine               = var.ev4rent_rds_engine
  engine_version       = var.ev4rent_rds_engine_version
  instance_class       = var.ev4rent_rds_instance_class
  name                 = var.ev4rent_rds_db_name
  username             = var.ev4rent_rds_username
  password             = var.ev4rent_rds_password
  parameter_group_name = var.ev4rent_rds_parameter_group_name
  db_subnet_group_name = var.ev4rent_rds_db_subnet_group_name
  vpc_security_group_ids = [var.ev4rent_rds_vpc_security_group_id]

  tags = {
    Name = "EV4rent-RDS-Instance"
  }
}

# Define other RDS resources like DB Subnet Groups, Parameter Groups, etc. here
