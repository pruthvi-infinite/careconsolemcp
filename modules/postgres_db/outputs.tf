output "postgres_server_name" {
  description = "The name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.name
}

output "postgres_server_fqdn" {
  description = "The fully qualified domain name of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

output "postgres_admin_login" {
  description = "The administrator login for the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.administrator_login
}

output "postgres_server_id" {
  description = "The ID of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.id
}

output "postgres_server_connection_string" {
  description = "Connection string for the PostgreSQL server (without password)"
  value       = "postgresql://${azurerm_postgresql_flexible_server.this.administrator_login}@${azurerm_postgresql_flexible_server.this.fqdn}:5432/${azurerm_postgresql_flexible_server.this.name}?sslmode=require"
}
output "postgres_full_connection_string" {
  description = "Full PostgreSQL connection string including password"
  sensitive   = true
  value       = "postgresql://${azurerm_postgresql_flexible_server.this.administrator_login}:${var.admin_password}@${azurerm_postgresql_flexible_server.this.fqdn}:5432/${azurerm_postgresql_flexible_server.this.name}?sslmode=require"
}
