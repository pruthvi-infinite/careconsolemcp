locals {
  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    name = "${var.project_name}-${var.environment}"
    value = var.environment
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}