module "resource_group" {
  source      = "./modules/resource_group"
  name_prefix = local.name_prefix
  location    = var.location
  tags        = local.common_tags
}

module "network" {
  source              = "./modules/network"
  name_prefix         = local.name_prefix
  location            = var.location
  resource_group_name = module.resource_group.name
  tags                = local.common_tags
}

module "nat_gateway" {
  source              = "./modules/nat_gateway"
  name_prefix         = local.name_prefix
  location            = var.location
  resource_group_name = module.resource_group.name
  subnet_id           = module.network.web_subnet_id
  tags                = local.common_tags
}

module "linux_vms" {
  source              = "./modules/linux_vms"
  name_prefix         = local.name_prefix
  vm_names            = var.vm_names
  location            = var.location
  resource_group_name = module.resource_group.name
  subnet_id           = module.network.vm_subnet_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  tags                = local.common_tags
}

module "app_service_plan" {
  source              = "./modules/app_service_plan"
  name_prefix         = local.name_prefix
  location            = var.location
  resource_group_name = module.resource_group.name
  sku                 = var.app_service_plan.sku
  capacity            = var.app_service_plan.capacity
  tags                = local.common_tags
}

module "web_apps" {
  source              = "./modules/web_apps"
  name_prefix         = local.name_prefix
  web_apps            = var.web_apps
  location            = var.location
  resource_group_name = module.resource_group.name
  service_plan_id     = module.app_service_plan.id
  tags                = local.common_tags
}

module "postgres_db" {
  source              = "./modules/postgres_db"
  name_prefix         = local.name_prefix
  location            = var.location
  resource_group_name = module.resource_group.name
  admin_login         = var.postgres_admin_login
  admin_password      = var.postgres_admin_password
  tags                = local.common_tags
}

module "storage_account" {
  source              = "./modules/storage_account"
  name_prefix         = local.name_prefix
  location            = var.location
  resource_group_name = module.resource_group.name
  storage_accounts    = var.storage_accounts
  tags                = local.common_tags
}
