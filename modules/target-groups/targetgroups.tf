resource "aws_lb_target_group" "lb_target_group" {
  name                               = var.target_group_name
  #name_prefix                        = var.target_group_name_prefix
  port                               = var.target_group_port
  protocol                           = var.target_group_protocol
  vpc_id                             = var.vpc_id
 health_check  {
    path                = var.target_group_path
    protocol            = var.target_group_protocol
    healthy_threshold   = var.target_group_healthy_threshold
    unhealthy_threshold = var.target_group_unhealthy_threshold
    timeout             = var.timeout
    interval            = var.interval
  }

  target_type = var.target_type
  tags        = var.tags
}