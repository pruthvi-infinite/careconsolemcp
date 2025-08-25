
resource "azurerm_service_plan" "this" {
  name                = "${var.name_prefix}-aspcare"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = var.sku
  worker_count        = var.capacity
  tags                = var.tags
}
