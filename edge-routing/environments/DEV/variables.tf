variable "aws_region" {
  description = "AWS region where edge routing resources will be created."
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

variable "hosted_zone_name" {
  description = "Existing Route 53 hosted zone name."
  type        = string
}

variable "app_domain" {
  description = "Customer-facing application domain."
  type        = string
}

variable "enable_alb_deletion_protection" {
  description = "Whether ALB deletion protection should be requested through Ingress annotations."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}
