variable "environment" {
  description = "Environment name (qa,uat, prod)"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "devops-app"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}