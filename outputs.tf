output "ip_groups" {
  description = "All ip_group resources"
  value       = azurerm_ip_group.ip_groups
}
output "ip_groups_cidrs" {
  description = "List of cidrs values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.cidrs]
}
output "ip_groups_firewall_ids" {
  description = "List of firewall_ids values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.firewall_ids]
}
output "ip_groups_firewall_policy_ids" {
  description = "List of firewall_policy_ids values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.firewall_policy_ids]
}
output "ip_groups_location" {
  description = "List of location values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.location]
}
output "ip_groups_name" {
  description = "List of name values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.name]
}
output "ip_groups_resource_group_name" {
  description = "List of resource_group_name values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.resource_group_name]
}
output "ip_groups_tags" {
  description = "List of tags values across all ip_groups"
  value       = [for k, v in azurerm_ip_group.ip_groups : v.tags]
}

