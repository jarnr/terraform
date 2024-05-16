variable "vm_name" {
  description = "Virtual Machine name"
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

variable "size" {
  description = "Virtual Machine size"
  type = string
}

variable "admin_username" {
  description = "Default admin username"
  type = string
}

variable "public_key" {
  description = "Public key for admin account"
  type = string
}

variable "os_disk_caching" {
  description = "Disk caching method for OS disk"
  type = string
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for OS disk"
  type = string
}

variable "source_image_reference_publisher" {
  description = "Source image publisher"
  type = string
}

variable "source_image_reference_offer" {
  description = "Source image used for VM"
  type = string
}

variable "source_image_reference_sku" {
  description = "SKU of source image"
  type = string
}

variable "source_image_reference_version" {
  description = "Version of source image"
  type = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type = string
}
