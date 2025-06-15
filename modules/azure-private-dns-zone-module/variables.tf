variable "name" {
  description = "The name of the Private DNS zone (e.g., 'privatelink.database.windows.net')"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the DNS zone"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the DNS zone"
  type        = map(string)
  default     = {}
}
