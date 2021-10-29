resource "aws_lb_target_group" "sonjw_lbtg" {
    name            = "sonjw-lbtg"
    port            = 80
    protocol        = "HTTP"
    vpc_id          = aws_vpc.sonjw_vpc.id

    health_check {
      enabled                   = true
      healthy_threshold         = 3
      interval                  = 5
      matcher                   =  "200"
      path                      = "/health.html"
      port                      = "traffic-port" 
      protocol                  = "HTTP"
      timeout                   = 2
      unhealthy_threshold    = 2
    }
}