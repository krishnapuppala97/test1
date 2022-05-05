
##target groups
## Target Group
variable "target_group_name" {
  description = "The name of the target group."
  default     = null
}

variable "target_group_name_prefix" {
  description = " Creates a unique name beginning with the specified prefix"
  default     = null
}

variable "target_group_port" {
  description = "The port on which targets receive traffic, unless overridden when registering a specific target."
  type        = number
  default     = null
}

variable "target_group_protocol" {
  description = "The protocol to use for routing traffic to the targets."
  default     = null
}

variable "target_group_path" {
  description = "application path"
  default     = null
}
variable "target_group_healthy_threshold" {
  description = "healthy threshold count"
  default     = null
}
variable "target_group_unhealthy_threshold" {
  description = "unhealthy threshold count."
  default     = null
}

variable "timeout" {
  description = "time out"
  default     = null
}

variable "interval" {
  default     = null
}

variable "vpc_id" {
  description = "The identifier of the VPC in which to create the target group."
  default     = null
}


variable "target_type" {
  description = "The type of target that you must specify when registering targets with this target group"
  default     = null
}
variable "tags" {
  description = "launch template tags"
  default     = {}
  type        = map(string)
}

/* variable "path" {
  description = "application deployed path"
  default     = null
}
variable "healthy_threshold" {
  description = "healthy threshold"
  default     = null
}
variable "unhealthy_threshold" {
  description = "un healthy threshold"
  default     = null
}
variable "timeout" {
  description = "time out to check instance health"
  default     = null
}
variable "interval" {
  description = "interval time"
  default     = null
} */

/* variable "tags" {
  description = "Resources Tags"
  type        = map(string)
  default     = {}
} */
