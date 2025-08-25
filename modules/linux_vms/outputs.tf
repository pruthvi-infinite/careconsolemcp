output "vm_ids" {
  value = [for vm in azurerm_linux_virtual_machine.vms : vm.id]
}

output "vm_private_ips" {
  value = [for nic in azurerm_network_interface.nics : nic.ip_configuration[0].private_ip_address]
}
