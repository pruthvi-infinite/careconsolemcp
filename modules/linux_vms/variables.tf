variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "vm_names" {
  description = "List of VM names"
  type        = list(string)
}

variable "location" {
  description = "The Azure region where VMs will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where VMs will be placed"
  type        = string
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

variable "tags" {
  description = "Tags to apply to VM resources"
  type        = map(string)
  default     = {}
}