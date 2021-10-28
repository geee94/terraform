resource "aws_internet_gateway" "sonjw_igw" {
  vpc_id = aws_vpc.sonjw_vpc.id

  tags = {
    Name = "sonjw-igw"
  }
}