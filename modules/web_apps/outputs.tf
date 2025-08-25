output "app_names" {
  value = [for app in azurerm_linux_web_app.apps : app.name]
}

output "app_urls" {
  value = [for app in azurerm_linux_web_app.apps : app.default_hostname]
}
