
module "test-lb-listeners" {
  source = "../../modules/lb-listeners"
  load_balancer_arn = module.test-alb.lb_arn
  port              = 80
  protocol          = "HTTP"
  action_type        = "forward"
  target_group_arn = module.test-targetgroup.targetgroup-arn
}
