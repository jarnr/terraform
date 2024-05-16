module "nsg" {
  source              = "../nsg"
  nsg_name            = "${var.vnet_name}_main"
  location            = var.location
  rg_name             = var.rg_name
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.rg_name
  dns_servers         = var.dns_servers

  subnet {
    name           = var.subnet_name
    address_prefix = var.address_prefix
    security_group = module.nsg.id
  }
}
