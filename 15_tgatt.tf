resource "aws_lb_target_group_attachment" "sonjw_lbtg_att" {
  target_group_arn       = aws_lb_target_group.sonjw_lbtg.arn
  target_id              = aws_instance.sonjw_weba.id
  port                   = 80
}