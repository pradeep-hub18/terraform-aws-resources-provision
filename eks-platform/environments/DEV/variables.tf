variable "aws_region" {
  description = "AWS region where platform resources will be created."
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

variable "networking_state_bucket" {
  description = "S3 bucket containing the networking Terraform state."
  type        = string
}

variable "networking_state_key" {
  description = "S3 key for the networking Terraform state."
  type        = string
}

variable "networking_state_region" {
  description = "AWS region of the networking Terraform state bucket."
  type        = string
}

variable "eks_state_bucket" {
  description = "S3 bucket containing the EKS Terraform state."
  type        = string
}

variable "eks_state_key" {
  description = "S3 key for the EKS Terraform state."
  type        = string
}

variable "eks_state_region" {
  description = "AWS region of the EKS Terraform state bucket."
  type        = string
}

variable "edge_routing_state_bucket" {
  description = "S3 bucket containing the edge-routing Terraform state."
  type        = string
}

variable "edge_routing_state_key" {
  description = "S3 key for the edge-routing Terraform state."
  type        = string
}

variable "edge_routing_state_region" {
  description = "AWS region of the edge-routing Terraform state bucket."
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}
