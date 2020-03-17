variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "vpc_id" {
  description = "The VPC ID"
}

variable "route" {
  description = "A list of route objects"
  default     = []
  type        = any
}

variable "propagating_vgws" {
  description = "A list of virtual gateways for propagation"
  default     = []
  type        = any
}
