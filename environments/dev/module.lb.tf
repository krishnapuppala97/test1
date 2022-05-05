module "test-alb" {
  source = "../../modules/alb"
  load_balancer_name = "test-alb"
  load_balancer_type = "application"
  security_groups    =  [module.test-sg.sg_id]
}