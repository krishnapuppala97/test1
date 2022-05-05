resource "aws_instance" "instance" {
  ami                  = var.ami
  instance_type        = var.instance_type
  user_data            = var.user_data
  user_data_base64     = var.user_data_base64
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name             = var.key_name
  subnet_id           = var.subnet_id
  iam_instance_profile = var.iam_instance_profile
  associate_public_ip_address = var.associate_public_ip_address
 tags        = merge({ "Name" = var.name }, var.tags)

}