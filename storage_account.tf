resource "azurerm_storage_account" "sa" {
  account_replication_type = "LRS"

  account_tier             = var.access ? "Standard" : null
  location                 = "australiasoutheast"
  name                     = "sampleleif"
  resource_group_name      = azurerm_resource_group.rg.name
}