output "container_app_url" {
  value = azurerm_container_app.ca.latest_revision_fqdn
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
