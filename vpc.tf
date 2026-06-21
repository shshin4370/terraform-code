# =========================================================
# Frodo VPC
# Region: ap-northeast-2
# VPC CIDR: 172.16.0.0/16
# =========================================================

resource "aws_vpc" "frodo_vpc" {
  cidr_block           = "172.16.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "frodo-vpc"
  }
}

# =========================================================
# Public Subnets
# =========================================================

resource "aws_subnet" "frodo_public01" {
  vpc_id                  = aws_vpc.frodo_vpc.id
  cidr_block              = "172.16.0.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "frodo-public01"
  }
}

resource "aws_subnet" "frodo_public02" {
  vpc_id                  = aws_vpc.frodo_vpc.id
  cidr_block              = "172.16.10.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "frodo-public02"
  }
}

# =========================================================
# Private Subnets
# =========================================================

resource "aws_subnet" "frodo_private01" {
  vpc_id            = aws_vpc.frodo_vpc.id
  cidr_block        = "172.16.100.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "frodo-private01"
  }
}

resource "aws_subnet" "frodo_private02" {
  vpc_id            = aws_vpc.frodo_vpc.id
  cidr_block        = "172.16.110.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "frodo-private02"
  }
}