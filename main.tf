resource "aws_vpc" "base" {
  cidr_block           = var.network_cidr
  enable_dns_hostnames = "true"
  tags = {
    Name = var.network_name
  }

}
resource "aws_subnet" "app1" {
  vpc_id                  = aws_vpc.base.id
  availability_zone       = "us-east-1a"
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = "true"
  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet1_name
  }
}
resource "aws_subnet" "app2" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet2_name
  }
}
resource "aws_subnet" "db1" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = var.subnet3_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet3_name
  }
}
resource "aws_subnet" "db2" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = var.subnet4_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet4_name
  }
}
