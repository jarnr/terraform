module "nic" {
  source    = "../nic"
  nic_name  = "${var.vm_name}_nic"
  location  = var.location
  rg_name   = var.rg_name
  subnet_id = var.subnet_id
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vm_name
  resource_group_name   = var.rg_name
  location              = var.location
  size                  = var.size
  admin_username        = var.admin_username
  network_interface_ids = [
    module.nic.id,
  ]

  admin_ssh_key {
    username   = var.admin_username
    public_key = var.public_key
  }

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.source_image_reference_publisher
    offer     = var.source_image_reference_offer
    sku       = var.source_image_reference_sku
    version   = var.source_image_reference_version
  }
}
