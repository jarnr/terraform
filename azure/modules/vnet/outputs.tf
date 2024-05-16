output "subnet_id" {
  value = [for subnet in azurerm_virtual_network.main.subnet: subnet.id][0]
}
