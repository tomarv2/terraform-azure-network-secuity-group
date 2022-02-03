output "network_security_group_name" {
  description = "Network security group name"
  value       = join("", azurerm_network_security_group.this.*.name)
}

output "network_security_group_id" {
  description = "Network security group id"
  value       = join("", azurerm_network_security_group.this.*.id)
}

output "network_security_group_rule" {
  description = "Network security group rule"
  value       = azurerm_network_security_group.this.*.security_rule
}
