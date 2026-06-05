variable "aws_region" {
  description = "AWS region used for the lab."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used in tags and resource names."
  type        = string
  default     = "terraform-aws-lab"
}

variable "environment" {
  description = "Environment name for the lab."
  type        = string
  default     = "study"
}

variable "create_demo_bucket" {
  description = "Controls whether a demo S3 bucket should be created."
  type        = bool
  default     = false
}
