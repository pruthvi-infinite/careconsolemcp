output "account_names" {
  value = [for sa in azurerm_storage_account.this : sa.name]
}
