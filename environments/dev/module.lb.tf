module "test-alb" {
  source = "../../modules/alb"
  load_balancer_name = "test-alb"
  load_balancer_type = "application"
  security_groups    =  [module.test-sg.sg_id]
  subnets = ["subnet-0c2b8303bcfcc73dd","	subnet-0b01a8beb2ae71bd7","subnet-04e39614de0b6e253"]
}