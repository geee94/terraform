# 가용영역 a의 Public Subnet
resource "aws_subnet" "sonjw_puba" {
  vpc_id            = aws_vpc.sonjw_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone =   "ap-northeast-2a"

  tags = {
    Name = "sonjw-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "sonjw_pria" {
  vpc_id            = aws_vpc.sonjw_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone =   "ap-northeast-2a"
  tags = {
    Name = "sonjw-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "sonjw_pubc" {
  vpc_id            = aws_vpc.sonjw_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone =  "ap-northeast-2c"
  tags = {
    Name = "sonjw-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "sonjw_pric" {
  vpc_id            = aws_vpc.sonjw_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sonjw-pric"
  }
}