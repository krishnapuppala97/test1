resource "aws_security_group" "sg" {
  name_prefix        = var.security_group_name
  description      = var.sg_description
  vpc_id      = var.security_group_vpc_id

  ingress = [
    {
      description      = var.ingress_sg_description
      from_port        = var.ingress_from_port
      to_port          = var.ingress_to_port
      protocol         = var.ingress_protocol
      cidr_blocks      = var.ingress_cidr_blocks
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]

  egress = [
    {
      description      = var.egress_sg_description
      from_port        = var.egress_from_port
      to_port          = var.egress_to_port
      protocol         = var.egress_protocol
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]

  tags = var.tags
}