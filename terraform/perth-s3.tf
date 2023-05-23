resource "aws_s3_bucket" "perthdemo" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-perth-bucket"
  acl           = "public-read"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-perth-demo"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "davesc63"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "Perth-IaC-Demo"
    }, {
    yor_trace = ""
  })
}
