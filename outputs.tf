output "dedicated_hosts" {
  description = "All dedicated_host resources"
  value       = azurerm_dedicated_host.dedicated_hosts
}
output "dedicated_hosts_auto_replace_on_failure" {
  description = "List of auto_replace_on_failure values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.auto_replace_on_failure]
}
output "dedicated_hosts_dedicated_host_group_id" {
  description = "List of dedicated_host_group_id values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.dedicated_host_group_id]
}
output "dedicated_hosts_license_type" {
  description = "List of license_type values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.license_type]
}
output "dedicated_hosts_location" {
  description = "List of location values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.location]
}
output "dedicated_hosts_name" {
  description = "List of name values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.name]
}
output "dedicated_hosts_platform_fault_domain" {
  description = "List of platform_fault_domain values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.platform_fault_domain]
}
output "dedicated_hosts_sku_name" {
  description = "List of sku_name values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.sku_name]
}
output "dedicated_hosts_tags" {
  description = "List of tags values across all dedicated_hosts"
  value       = [for k, v in azurerm_dedicated_host.dedicated_hosts : v.tags]
}

