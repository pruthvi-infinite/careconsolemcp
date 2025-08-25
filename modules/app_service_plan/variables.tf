variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "location" {
  description = "The Azure region where App Service Plan will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "sku" {
  description = "The SKU for the App Service Plan"
  type        = string
}

variable "capacity" {
  description = "The number of instances for the App Service Plan"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags to apply to App Service Plan resources"
  type        = map(string)
  default     = {}
}
