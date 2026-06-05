locals {
  normalized_project_name = lower(replace(var.project_name, "_", "-"))
}

resource "aws_s3_bucket" "demo" {
  count = var.create_demo_bucket ? 1 : 0

  bucket_prefix = "${local.normalized_project_name}-${var.environment}-"
}

resource "aws_s3_bucket_public_access_block" "demo" {
  count = var.create_demo_bucket ? 1 : 0

  bucket = aws_s3_bucket.demo[0].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
