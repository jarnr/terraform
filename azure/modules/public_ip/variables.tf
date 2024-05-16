variable "public_ip_name" {
  description = "Public IP name"
  type        = string
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "VPC location"
  type        = string
}

variable "allocation_method" {
  description = "Public IP address allocation method"
  type        = string
  default     = "Dynamic"
}
