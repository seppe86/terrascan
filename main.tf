resource "azurerm_resource_group" "example" {
  name     = "tf-terraform-rg"
  location = "West Europe"
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
