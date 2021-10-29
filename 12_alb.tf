# Application LoadBalancer Deploy
resource "aws_lb" "sonjw_lb" {
  name                   = "sonjw-alb"
  internal               = false
  load_balancer_type     = "application"
  security_groups        =  [aws_security_group.sonjw_websg.id]
  subnets                =  [aws_subnet.sonjw_puba.id,aws_subnet.sonjw_pubc.id]
  
  tags = {
    Name  = "sonjw-alb"
  }
}

