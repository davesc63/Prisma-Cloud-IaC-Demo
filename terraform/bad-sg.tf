resource "aws_security_group" "web-node" {
  # security group is open to the world in SSH port
  #name        = "${local.resource_prefix.value}-sg"
  name        = "bad-security-group"
  description = "${local.resource_prefix.value} Misconfigured Security Group - Prisma-IAC-Demo"
  #vpc_id      = aws_vpc.web_vpc.id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  ingress {
    from_port = 3389
    to_port   = 3389
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  tags = {
    git_org  = "davesc63"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "Demo-Customer-Name-Here"
  }
}
resource "aws_security_group" "bad-sg" {
  # security group is open to the world in SSH port
  name        = "bad-sg"
  description = "bad-sg Misconfigured Security Group - Prisma-IAC-Demo"
  #vpc_id      = aws_vpc.web_vpc.id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  ingress {
    from_port = 3389
    to_port   = 3389
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  tags = {
    git_org  = "davesc63"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "Demo-Customer-Name-Here"
  }
}