variable "aws_region" {
  description = "AWS region where networking resources will be created."
  type        = string
}

variable "project_name" {
  description = "Project name used for resource names and tags."
  type        = string
}

variable "environment" {
  description = "Environment name used for resource names and tags."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the subnets."
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Whether private subnets should route outbound internet traffic through NAT gateways."
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Whether to use one shared NAT gateway. Set false for one NAT gateway per private subnet/AZ."
  type        = bool
  default     = false
}

variable "enable_vpc_endpoints" {
  description = "Whether to create private AWS service VPC endpoints."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}
