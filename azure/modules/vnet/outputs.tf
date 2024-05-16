output "subnet_id" {
  value = [for subnet in azurerm_virtual_network.main.subnet: subnet.id][0]
}

output "main_nsg_name" {
  value = module.nsg.nsg_name
}
