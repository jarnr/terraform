provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "../../modules/resource_group"
  rg_name     = var.rg_name
  location = var.location
}

module "vnet" {
  source         = "../../modules/vnet"
  vnet_name      = var.vnet_name
  address_space  = var.address_space
  location       = var.location
  rg_name        = var.rg_name
  dns_servers    = var.dns_servers
  subnet_name    = var.subnet_name
  address_prefix = var.address_prefix
}

module "public_ip" {
  source         = "../../modules/public_ip"
  public_ip_name = "${var.vm_name}_public_ip"
  rg_name        = var.rg_name
  location       = var.location
}

module "vm" {
  source                           = "../../modules/vm"
  admin_username                   = var.admin_username
  location                         = var.location
  os_disk_caching                  = var.os_disk_caching
  os_disk_storage_account_type     = var.os_disk_storage_account_type
  public_ip_id                     = module.public_ip.public_ip_id
  public_key                       = var.public_key
  rg_name                          = var.rg_name
  size                             = var.size
  source_image_reference_offer     = var.source_image_reference_offer
  source_image_reference_publisher = var.source_image_reference_publisher
  source_image_reference_sku       = var.source_image_reference_sku
  source_image_reference_version   = var.source_image_reference_version
  subnet_id                        = module.vnet.subnet_id
  vm_name                          = var.vm_name
}
