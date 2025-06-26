output "dns_zone_id" {
  value       = azurerm_private_dns_zone.this.id
  description = "The ID of the Private DNS Zone"
}

output "dns_zone_name" {
  value       = azurerm_private_dns_zone.this.name
  description = "The name of the Private DNS Zone"
}
output "module_version" {
  value       = "v1.0.4"
  description = "The version of the module in use"
}
