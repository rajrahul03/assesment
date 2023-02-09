resource "azurerm_resource_group" "az-arch-rsg" {
  name     = var.resource_group_name
  location = var.location
}