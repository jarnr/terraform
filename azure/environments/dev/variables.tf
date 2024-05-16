variable "vm_name" {
  description = "Virtual Machine name"
  type = string
  default = "myVM"
}

variable "location" {
  description = "VPC location"
  type = string
  default = "East US"
}

variable "rg_name" {
  description = "Resource group name"
  type = string
  default = "main"
}

variable "size" {
  description = "Virtual Machine size"
  type = string
  default = "Standard_F2"
}

variable "admin_username" {
  description = "Default admin username"
  type = string
  default = "adminuser"
}

variable "public_key" {
  description = "Public key for admin account"
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIIz/JF6NcWxboGsTLl+LClJdYevRcqdoTkHLrVd8Oj00CSps5EiQLZW9xPTICfgHr4cfxlx+001XOsNiDl/O28CpYxJ24tzMk6s3DfS2yPMqWBKexfmUS8GxM/PuCeRqOneH/XXzpD546ViR3N4Wk/8542Bdb/5jfQ1tP/9JQRDtTq98ONJrpJgMPYoQRfCA/KAaBX8Q5j/vp+wd/QYiTrFZtdymarBiloWQ3jg/qkPLfIdUuep/jxxhesc0tfgZbsi/xEtBgEPCaHR97j7BepHGD9h47hBqJ1wAlyRTdwY0kYxJE9mI0f0RqO9YXW8nLGf4kqdQV5ni/puqOus+QGBVVHE6dZYHxn4U+0AHhSbj8AuMpd4fve6ZSF4DtJ1InDigt7cIJqgKrr4PmoeklqhgBiyyJi/O3fVI782q9oGOEZJ3+4djT7vcN7szRnzGi7OMrTtpPb/sHOFy7MavA4wDfo8iMYCdVDF1Hw3gkzAnd5/L+ymEC0yHJXtALtuU= jar@mithrandir"
}

variable "os_disk_caching" {
  description = "Disk caching method for OS disk"
  type = string
  default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for OS disk"
  type = string
  default = "Standard_LRS"
}

variable "source_image_reference_publisher" {
  description = "Source image publisher"
  type = string
  default = "Canonical"
}

variable "source_image_reference_offer" {
  description = "Source image used for VM"
  type = string
  default = "0001-com-ubuntu-server-jammy"
}

variable "source_image_reference_sku" {
  description = "SKU of source image"
  type = string
  default = "22_04-lts"
}

variable "source_image_reference_version" {
  description = "Version of source image"
  type = string
  default = "latest"
}

variable "vnet_name" {
  description = "Virtual network name"
  type = string
  default = "main"
}

variable "address_space" {
  description = "Virtual network CIDR range"
  type = list(string)
  default = ["10.0.0.0/8"]
}

variable "dns_servers" {
  description = "Virtual network DNS servers"
  type = list(string)
  default = ["10.0.1.53", "10.0.1.54"]
}

variable "subnet_name" {
  description = "Subnet name"
  type = string
  default = "main"
}

variable "address_prefix" {
  description = "Subnet address CIDR range"
  type = string
  default = "10.0.0.0/24"
}
