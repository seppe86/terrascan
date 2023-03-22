resource "azurerm_resource_group" "example" {
  name     = "tf-terraform-rg"
  location = "West Europe"
  
  tags = {
  environment = "Demo"
  purpose = "Terrascan"
}

resource "azurerm_storage_account" "example" {
  name                     = "tfterraformsto"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Demo"
    purpose = "Terrascan"
  }
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.example.id

  default_action             = "Allow"
  
  tags = {
  environment = "Demo"
  purpose = "Terrascan"
}
