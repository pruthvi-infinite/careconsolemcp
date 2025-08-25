resource "azurerm_storage_account" "this" {
  for_each                 = var.storage_accounts
  name                     = replace("${var.name_prefix}${each.key}", "-", "")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
}

resource "azurerm_storage_container" "this" {
  for_each              = var.storage_accounts
  name                  = each.value.container_name
  storage_account_id    = azurerm_storage_account.this[each.key].id 
  container_access_type = "private"
}