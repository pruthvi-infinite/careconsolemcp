


resource "azurerm_linux_web_app" "apps" {
  for_each = toset(var.web_apps)

  name                = "${var.name_prefix}-${each.value}-webapp"
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  tags                = var.tags

  site_config {
    always_on        = false
  }
}
