resource "aws_autoscaling_attachment" "sdkim_atatt" {
  autoscaling_group_name = aws_autoscaling_group.sonjw_atsg.id
  alb_target_group_arn   = aws_lb_target_group.sonjw_lbtg.arn
} 