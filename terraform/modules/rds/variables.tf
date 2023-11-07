# modules/rds/variables.tf

variable "ev4rent_rds_allocated_storage" {
  description = "The allocated storage size for the RDS instance"
  type        = number
}

variable "ev4rent_rds_storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
}

variable "ev4rent_rds_engine" {
  description = "The database engine for the RDS instance"
  type        = string
}

variable "ev4rent_rds_engine_version" {
  description = "The engine version for the RDS instance"
  type        = string
}

variable "ev4rent_rds_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "ev4rent_rds_db_name" {
  description = "The DB name for the RDS instance"
  type        = string
}

variable "ev4rent_rds_username" {
  description = "The username for the RDS instance"
  type        = string
}

variable "ev4rent_rds_password" {
  description = "The password for the RDS instance"
  type        = string
}

variable "ev4rent_rds_parameter_group_name" {
  description = "The parameter group name for the RDS instance"
  type        = string
}

variable "ev4rent_rds_db_subnet_group_name" {
  description = "The DB subnet group name for the RDS instance"
  type        = string
}

variable "ev4rent_rds_vpc_security_group_id" {
  description = "The VPC security group ID for the RDS instance"
  type        = string
}
