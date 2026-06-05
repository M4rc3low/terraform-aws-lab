output "aws_region" {
  description = "AWS region configured for this lab."
  value       = var.aws_region
}

output "project_name" {
  description = "Project name used by this lab."
  value       = var.project_name
}

output "demo_storage_name" {
  description = "Name of the optional demo storage resource, when created."
  value       = var.create_demo_bucket ? aws_s3_bucket.demo[0].bucket : null
}
