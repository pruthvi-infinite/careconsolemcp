resource "azurerm_network_interface" "nics" {
  for_each            = toset(var.vm_names)
  name                = "${var.name_prefix}-${each.key}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vms" {
  for_each            = toset(var.vm_names)
  name                = "${var.name_prefix}-${each.key}-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  disable_password_authentication = false
  tags                = var.tags

  network_interface_ids = [
    azurerm_network_interface.nics[each.key].id
  ]

  os_disk {
    name              = "${var.name_prefix}-${each.key}-osdisk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
