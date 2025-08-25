variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "location" {
  description = "The Azure region where NAT Gateway will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the NAT Gateway"
  type        = string
}

variable "tags" {
  description = "Tags to apply to NAT Gateway resources"
  type        = map(string)
  default     = {}
}
