resource "aws_vpc" "sonjw_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Name   =  "sonjw-vpc"  
  }
} 