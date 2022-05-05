variable "load_balancer_name" {
  description = "(Optional) The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen."
  type        = string
  default     = null
}


variable "internal" {
  description = "(Optional) If true, the LB will be internal."
  default     = false
  type        = bool
}

variable "load_balancer_type" {
  description = "(Optional) The type of load balancer to create."
  type        = string
  default     = "application"
}

variable "security_groups" {
  description = "(Optional) A list of security group IDs to assign to the LB."
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "(Optional) A list of subnet IDs to attach to the LB."
  type        = list
  default = []

}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = "vpc id"
  default     = "null"
}