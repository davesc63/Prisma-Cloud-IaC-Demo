resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "davesc63"
    git_repo = "Prisma-Cloud-IaC-Demo-update"
    customer = "Customer-Name-Here"
    }, {
    yor_trace = "28cabed6-3d82-40c6-b2be-7323c0a7c8d5"
  })
  server_side_encryption_configuration = {"rule": {"apply_server_side_encryption_by_default": {"sse_algorithm": "AES256"}}}
}

