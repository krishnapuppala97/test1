variable "load_balancer_arn" {
  description = "The ARN of the load balancer."
}

variable "port" {
  description = "The port on which the load balancer is listening."
  type        = number
}

variable "protocol" {
  description = "The protocol for connections from clients to the load balancer."
  default     = null
}

variable "ssl_policy" {
  description = "he name of the SSL Policy for the listener."
  default     = null
}

variable "certificate_arn" {
  description = "The ARN of the default SSL server certificate"
  default     = null
}
variable "action_type" {
  description = "An Action block"
  default     = null
}

variable "target_group_arn" {
  description = "The ARN of the target group"
  default     = null
}