output "vnet_id" {
  value       = join("", azurerm_virtual_network.vnet[*].id)
  description = "The id of the newly created vNet"
}

output "vnet_name" {
  value       = join("", azurerm_virtual_network.vnet[*].name)
  description = "The name of the newly created vNet"
}

output "vnet_location" {
  value       = join("", azurerm_virtual_network.vnet[*].location)
  description = "The location of the newly created vNet"

}

output "vnet_guid" {
  value       = join("", azurerm_virtual_network.vnet[*].guid)
  description = "The GUID of the virtual network."

}

output "vnet_rg_name" {
  value       = join("", azurerm_virtual_network.vnet[*].resource_group_name)
  description = "The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created"

}

output "ddos_protection_plan_id" {
  value       = join("", azurerm_network_ddos_protection_plan.ddos[*].id)
  description = "The ID of the DDoS Protection Plan"
}

output "vnet_address_space" {
  value       = join("", azurerm_virtual_network.vnet[0].address_space)
  description = "Concatenated address space of the virtual network"
}

output "network_watcher_id" {
  value       = join("", azurerm_network_watcher.flow_log_nw[*].id)
  description = "The ID of the Network Watcher."
}

output "network_watcher_name" {
  value       = join("", azurerm_network_watcher.flow_log_nw[*].name)
  description = "The name of Network Watcher deployed."
}
