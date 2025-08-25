variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The deployment environment (dev, staging, prod)"
  type        = string
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "vm_names" {
  description = "List of VM names"
  type        = list(string)
  default     = []
}

variable "admin_username" {
  description = "Admin username for VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for VMs"
  type        = string
  sensitive   = true
}

variable "postgres_admin_login" {
  description = "PostgreSQL admin login"
  type        = string
}

variable "postgres_admin_password" {
  description = "PostgreSQL admin password"
  type        = string
  sensitive   = true
}

variable "storage_accounts" {
  description = "Map of storage accounts to create"
  type = map(object({
    container_name = string
  }))
  default = {}
}

variable "app_service_plan" {
  description = "App Service Plan configuration"
  type = object({
    sku      = string
    capacity = number
  })
}

variable "web_apps" {
  description = "List of web app names"
  type        = list(string)
  default     = []
}
