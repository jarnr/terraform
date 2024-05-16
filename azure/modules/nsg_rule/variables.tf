variable "nsg_rule_name" {
  description = "Network Security Rule name"
  type = string
}
variable "priority" {
  description = "Network Security Rule Priority"
  type = string
  default = "100"
}
variable "direction" {
  description = "Network Security Rule Direction"
  type = string
  default = "Inbound"
}
variable "access" {
  description = "Network Security Rule Access"
  type = string
  default = "Allow"
}
variable "protocol" {
  description = "Network Security Rule Protocol"
  type = string
  default = "Tcp"
}
variable "source_port_range" {
  description = "Network Security Rule Source Port Range"
  type = string
}
variable "destination_port_range" {
  description = "Network Security Rule Destination Port Range" 
  type = string
}
variable "source_address_prefix" {
  description = "Network Security Rule Source Address Prefix"
  type = string
}
variable "destination_address_prefix" {
  description = "Network Security Rule Destination Address Prefix"
  type = string
}
variable "rg_name" {
  description = "Resource Group name"
  type = string
}
variable "nsg_name" {
  description = "Network Security Group name"
  type = string
}
