output "resource_group_name" {
    value = azurerm_resource_group.az-arch-rsg.name
}

output "location_id" {
    value = azurerm_resource_group.az-arch-rsg.location
}
output "network_name" {
  value = azurerm_virtual_network.mainvnet.name
}

output "web_subnet_id" {
  value = azurerm_subnet.web-tier-subnet.id
}

output "app_subnet_id" {
  value = azurerm_subnet.app-tier-subnet.id
}

output "db_subnet_id" {
  value = azurerm_subnet.data-tier-subnet.id
}