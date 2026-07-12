output "ip_groups_id" {
  description = "Map of id values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.id }
}
output "ip_groups_cidrs" {
  description = "Map of cidrs values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.cidrs }
}
output "ip_groups_firewall_ids" {
  description = "Map of firewall_ids values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.firewall_ids }
}
output "ip_groups_firewall_policy_ids" {
  description = "Map of firewall_policy_ids values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.firewall_policy_ids }
}
output "ip_groups_location" {
  description = "Map of location values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.location }
}
output "ip_groups_name" {
  description = "Map of name values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.name }
}
output "ip_groups_resource_group_name" {
  description = "Map of resource_group_name values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.resource_group_name }
}
output "ip_groups_tags" {
  description = "Map of tags values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.tags }
}

