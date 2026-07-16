output "ip_groups_id" {
  description = "Map of id values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_groups_cidrs" {
  description = "Map of cidrs values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.cidrs if v.cidrs != null && length(v.cidrs) > 0 }
}
output "ip_groups_firewall_ids" {
  description = "Map of firewall_ids values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.firewall_ids if v.firewall_ids != null && length(v.firewall_ids) > 0 }
}
output "ip_groups_firewall_policy_ids" {
  description = "Map of firewall_policy_ids values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.firewall_policy_ids if v.firewall_policy_ids != null && length(v.firewall_policy_ids) > 0 }
}
output "ip_groups_location" {
  description = "Map of location values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.location if v.location != null && length(v.location) > 0 }
}
output "ip_groups_name" {
  description = "Map of name values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ip_groups_resource_group_name" {
  description = "Map of resource_group_name values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "ip_groups_tags" {
  description = "Map of tags values across all ip_groups, keyed the same as var.ip_groups"
  value       = { for k, v in azurerm_ip_group.ip_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

