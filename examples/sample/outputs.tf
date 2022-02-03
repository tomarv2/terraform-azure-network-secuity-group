output "network_security_group_name" {
  description = "Network security group name"
  value       = module.network_security_group.network_security_group_name
}

output "network_security_group_id" {
  description = "Network security group id"
  value       = module.network_security_group.network_security_group_id
}

output "network_security_group_rule" {
  description = "Network security group rule"
  value       = module.network_security_group.network_security_group_rule
}
