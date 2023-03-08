# Create storage account for boot diagnostics
resource "azurerm_storage_account" "my_tf_state_account" {
  name                     = "mytfstate"
  location                 = var.azurerm_location
  resource_group_name      = var.azurerm_resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "development"
  }
}

resource "azurerm_storage_container" "my_tf_state_account_container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.my_tf_state_account.name
  container_access_type = "blob"
}