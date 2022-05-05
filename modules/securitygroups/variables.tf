variable "security_group_name" {
  description = "security group name"
}
variable "ingress_sg_description" {
  description = "inbound description"
  default     = "null"
}
variable "ingress_from_port" {
  description = "inbound traffic from port"
  default     = "null"
}
variable "ingress_to_port" {
  description = "inbound traffic to port"
  default     = "null"
}
variable "ingress_protocol" {
  description = "inbound protocol"
  default     = "null"
}
variable "egress_sg_description" {
  description = "outbound description"
  default     = "null"
}
variable "egress_from_port" {
  description = "outbound traffic from port"
  default     = "null"
}
variable "egress_to_port" {
  description = "outbound traffic to port"
  default     = "null"
}
variable "egress_protocol" {
  description = "outbound traffic protocol"
  default     = "null"
}
variable "security_group_vpc_id" {
  description = "vpc id"
  default     = "null"
}
variable "sg_description" {
  description = "security group description"
  default     = "null"
}

variable "ingress_cidr_blocks" {
  description = "inbound cidr block"
  default     = "null"
}
variable "tags" {
  description = "security group tags"
  default     = {}
  type        = map(string)
}
