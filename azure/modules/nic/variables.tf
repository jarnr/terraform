variable "nic_name" {
  description = "Network interface name"
  type = string
}

variable "location" {
  description = "VPC location"
  type = string
}

variable "rg_name" {
  description = "Resource group name"
  type = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type = string
}

variable "public_ip_id" {
  description = "Public IP ID"
  type = string
  default = null
}
