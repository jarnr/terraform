resource "azurerm_resource_group" "myStorageRG" {
  name     = "jarStorage"
  location = "eastus"
}

resource "azurerm_storage_account" "myStorageAccount" {
  name                     = "jarstoracct"
  resource_group_name      = azurerm_resource_group.myStorageRG.name
  location                 = azurerm_resource_group.myStorageRG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "myStorageContainer" {
  name                  = "jarstor"
  storage_account_name  = azurerm_storage_account.myStorageAccount.name
  container_access_type = "private"
}

