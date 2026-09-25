resource "azurerm_resource_group" "rg" {
  name     = "sit"
  location = "Central India"
}

resource "azurerm_storage_account" "storage" {
  name                     = "stname123432"
  resource_group_name      = "sit"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}