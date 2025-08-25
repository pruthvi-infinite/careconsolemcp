output "resource_group_name" {
  value = module.resource_group.name
}
output "vm_ids" {
  value = module.linux_vms.vm_ids
}
output "public_ip" {
  value = module.nat_gateway.public_ip
}
output "vm_private_ips" {
  value = module.linux_vms.vm_private_ips
}
output "vm_subnet_id" {
  value = module.network.vm_subnet_id
}
output "web_subnet_id" {
  value = module.network.web_subnet_id
}
output "app_service_plan" {
  value = module.app_service_plan.id
}
output "web_app_urls" {
  value = module.web_apps.app_urls
}
output "storage_account_names" {
  value = module.storage_account.account_names
}
output "postgres_admin_login" {
  value = module.postgres_db.postgres_admin_login
}
output "postgres_full_connection_string" {
  value = module.postgres_db.postgres_full_connection_string
  sensitive   = true
}
output "postgres_server_connection_string" {
  value = module.postgres_db.postgres_server_connection_string
}

output "postgres_server_name" {
  value = module.postgres_db.postgres_server_name
}
output "postgres_server_id" {
  value = module.postgres_db.postgres_server_id
}
output "postgres_server_fqdn" {
  value = module.postgres_db.postgres_server_fqdn
}
