output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vm_private_ips" {
  value = azurerm_network_interface.nic[*].private_ip_address
}
