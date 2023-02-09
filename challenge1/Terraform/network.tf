resource "azurerm_virtual_network" "mainvnet" {
  name                = "mainvnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = [var.mainvnetadd]
}

resource "azurerm_subnet" "web-tier-subnet" {
  name                 = "web-tier-subnet"
  virtual_network_name = azurerm_virtual_network.mainvnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = [var.webtiersubnetadd]
}

resource "azurerm_subnet" "app-tier-subnet" {
  name                 = "app-tier-subnet"
  virtual_network_name = azurerm_virtual_network.mainvnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = [var.apptiersubnetadd]
}

resource "azurerm_subnet" "data-tier-subnet" {
  name                 = "data-tier-subnet"
  virtual_network_name = azurerm_virtual_network.mainvnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = [var.datatiersubnetadd]
}