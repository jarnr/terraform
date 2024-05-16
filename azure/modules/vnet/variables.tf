variable "location" {
  description = "VPC location"
  type = string
}

variable "rg_name" {
  description = "Resource group name"
  type = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type = string
}

variable "address_space" {
  description = "Virtual network CIDR range"
  type = list(string)
}

variable "dns_servers" {
  description = "Virtual network DNS servers"
  type = list(string)
  default = null
}

variable "subnet_name" {
  description = "Subnet name"
  type = string
}

variable "address_prefix" {
  description = "Subnet address CIDR range"
  type = string
}
