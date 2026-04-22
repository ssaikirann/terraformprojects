variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "myWebAppRG"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "asp_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "myAppServicePlan"
}

variable "os_type" {
  description = "OS type for the App Service Plan"
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "SKU name for the App Service Plan"
  type        = string
  default     = "B1"
}

variable "wa_name" {
  description = "Name of the Web App"
  type        = string
  default     = "myWebApp"
}

variable "php_version" {
  description = "PHP version"
  type        = string
  default     = "8.2"
}
