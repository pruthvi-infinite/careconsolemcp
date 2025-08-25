variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "web_apps" {
  description = "List of web app names"
  type        = list(string)
}

variable "location" {
  description = "The Azure region where web apps will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the App Service Plan"
  type        = string
}

variable "tags" {
  description = "Tags to apply to web app resources"
  type        = map(string)
  default     = {}
}
