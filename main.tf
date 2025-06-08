resource "aws_vpc" "base" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  tags = {
    Name = "Terraformvpc"
  }

}
resource "aws_subnet" "app1" {
  vpc_id                  = aws_vpc.base.id
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"

  depends_on = [aws_vpc.base]
  tags = {
    Name = "app1"
  }
}
resource "aws_subnet" "app2" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  depends_on = [aws_vpc.base]
  tags = {
    Name = "app2"
  }
}
resource "aws_subnet" "db1" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  depends_on = [aws_vpc.base]
  tags = {
    Name = "db1"
  }

}

resource "aws_subnet" "db2" {
  vpc_id                  = aws_vpc.base.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  depends_on = [aws_vpc.base]
  tags = {
    Name = "db2"
  }
}
