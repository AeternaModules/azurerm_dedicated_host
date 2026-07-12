output "dedicated_hosts_id" {
  description = "Map of id values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.id }
}
output "dedicated_hosts_auto_replace_on_failure" {
  description = "Map of auto_replace_on_failure values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.auto_replace_on_failure }
}
output "dedicated_hosts_dedicated_host_group_id" {
  description = "Map of dedicated_host_group_id values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.dedicated_host_group_id }
}
output "dedicated_hosts_license_type" {
  description = "Map of license_type values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.license_type }
}
output "dedicated_hosts_location" {
  description = "Map of location values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.location }
}
output "dedicated_hosts_name" {
  description = "Map of name values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.name }
}
output "dedicated_hosts_platform_fault_domain" {
  description = "Map of platform_fault_domain values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.platform_fault_domain }
}
output "dedicated_hosts_sku_name" {
  description = "Map of sku_name values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.sku_name }
}
output "dedicated_hosts_tags" {
  description = "Map of tags values across all dedicated_hosts, keyed the same as var.dedicated_hosts"
  value       = { for k, v in azurerm_dedicated_host.dedicated_hosts : k => v.tags }
}

