resource "aws_lb" "lb" {
  name                       = var.load_balancer_name
  internal                   = var.internal
  load_balancer_type         = var.load_balancer_type
  security_groups            = var.security_groups
  subnets                    = var.subnets
/*   lifecycle {
    create_before_destroy = true
  } */
}