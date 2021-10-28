resource "aws_route_table" "sonjw_ngart_a" {
  vpc_id  =  aws_vpc.sonjw_vpc.id

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.sonjw_nga_a.id
  }
  tags  = {
    Name  = "sonjw-nga-rta"
  }
}

resource "aws_route_table" "sonjw_ngart_c" {
  vpc_id  =  aws_vpc.sonjw_vpc.id

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.sonjw_nga_c.id
  }
  tags  = {
    Name  = "sonjw-nga-rtc"
  }
} 