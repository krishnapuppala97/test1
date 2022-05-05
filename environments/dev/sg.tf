module "test-sg" {
  source                   = "../../modules/securitygroups"
  security_group_name      = "test-security-Sg"
  sg_description           = "Allow all inbound traffic"
  ingress_sg_description   = "test ingress rule "
  ingress_from_port        = 0
  ingress_to_port          = 0
  ingress_protocol         = "-1"
  ingress_cidr_blocks      = ["0.0.0.0/0"]
  egress_sg_description    = "test outbound rule "
  egress_from_port         = 0
  egress_to_port           = 0
  egress_protocol          = "-1"
}
