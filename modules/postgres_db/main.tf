resource "azurerm_postgresql_flexible_server" "this" {
  name                   = "${var.name_prefix}-pgflex-db"
  location               = var.location
  resource_group_name    = var.resource_group_name
  administrator_login    = var.admin_login
  administrator_password = var.admin_password
  version                = "13"
  storage_mb             = 32768
  sku_name               = "B_Standard_B1ms"
  tags                   = var.tags

  authentication {
    active_directory_auth_enabled = false
    password_auth_enabled         = true
  }

  zone = "1"
}