variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "myContainerAppRG"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "law_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
  default     = "myLAW"
}

variable "cae_name" {
  description = "Name of the Container App Environment"
  type        = string
  default     = "myCAE"
}

variable "ca_name" {
  description = "Name of the Container App"
  type        = string
  default     = "myContainerApp"
}

variable "container_name" {
  description = "Name of the container"
  type        = string
  default     = "mycontainer"
}

variable "container_image" {
  description = "Container image"
  type        = string
  default     = "nginx:latest"
}

variable "cpu" {
  description = "CPU cores"
  type        = string
  default     = "0.25"
}

variable "memory" {
  description = "Memory"
  type        = string
  default     = "0.5Gi"
}

variable "target_port" {
  description = "Target port for ingress"
  type        = number
  default     = 80
}
