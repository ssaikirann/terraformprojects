resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "asp" {
  name                = var.asp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_web_app" "wa" {
  name                = var.wa_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      php_version = var.php_version
    }
  }
}

resource "null_resource" "zip_deploy" {
  depends_on = [azurerm_linux_web_app.wa]

  provisioner "local-exec" {
    command = <<EOT
      az webapp deployment source config-zip \
        --resource-group ${azurerm_resource_group.rg.name} \
        --name ${azurerm_linux_web_app.wa.name} \
        --src example.zip
    EOT
  }
}

