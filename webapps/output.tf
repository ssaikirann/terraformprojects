output "web_app_url" {
  value = azurerm_linux_web_app.wa.default_hostname
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
