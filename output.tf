output "resource_group_name" {
  value = azurerm_resource_group.student-rg.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.student-vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.student-subnet.name
}

output "linux_virtual_machine_names" {
  value = [for s in azurerm_linux_virtual_machine.student-vm : s.name[*]]
}

output "linux_virtual_machine_ips" {
  value = [for s in azurerm_linux_virtual_machine.student-vm : s.public_ip_address[*]]
}
