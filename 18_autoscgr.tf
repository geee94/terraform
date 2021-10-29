resource "aws_placement_group" "sonjw_pg" {
    name ="sonjw-pg"
    strategy = "cluster"
}

resource "aws_autoscaling_group" "sonjw_atsg" {
    name                        = "sonjw-atsg"
    min_size                    = 2
    max_size                    = 8
    health_check_grace_period   = 300
    health_check_type           = "ELB"
    desired_capacity            = 2
    force_delete                = true
    launch_configuration        = aws_launch_configuration.sonjw_lacf.id
    vpc_zone_identifier         = [aws_subnet.sonjw_puba.id, aws_subnet.sonjw_pubc.id ]
}