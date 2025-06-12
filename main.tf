resource "aws_vpc" "base" {
  cidr_block           = var.network_info.cidr
  enable_dns_hostnames = "true"
  tags = {
    Name = var.network_info.name
  }

}
resource "aws_subnet" "app1" {
  vpc_id                  = aws_vpc.base.id
  availability_zone       = var.subnet1_info.az
  cidr_block              = var.subnet1_info.cidr
  map_public_ip_on_launch = "true"
  depends_on              = [aws_vpc.base]
  tags = {
    Name = var.subnet1_info.name
  }
}
resource "aws_subnet" "app2" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = var.subnet2_info.cidr
  map_public_ip_on_launch = "true"
  availability_zone       = var.subnet2_info.az

  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet2_info.name
  }
}
resource "aws_subnet" "db1" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = var.subnet3_info.cidr
  map_public_ip_on_launch = "true"
  availability_zone       = var.subnet3_info.az

  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet3_info.name
  }
}
resource "aws_subnet" "db2" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = var.subnet4_info.cidr
  map_public_ip_on_launch = "true"
  availability_zone       = var.subnet4_info.az

  depends_on = [aws_vpc.base]
  tags = {
    Name = var.subnet4_info.name
  }
}
