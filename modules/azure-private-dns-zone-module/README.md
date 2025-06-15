# Azure Private DNS Zone Module

This OpenTofu/Terraform module provisions an [Azure Private DNS Zone](https://learn.microsoft.com/en-us/azure/dns/private-dns-overview) using the `azurerm` provider.

## Features

- Creates a Private DNS Zone in the specified Azure Resource Group.
- Supports custom tags.
- Outputs useful metadata like the DNS Zone ID and name.


## Usage

```
module "private_dns_zone" {
  source              = "github.com/parsontodd/private-dns-zone-module"
  name                = "privatelink.postgres.database.azure.com"
  resource_group_name = "my-resource-group"
  tags = {
    environment = "dev"
  }
}
```

## Inputs

| Name                  | Description                              | Type          | Default | Required |
| --------------------- | ---------------------------------------- | ------------- | ------- | -------- |
| `name`                | The name of the DNS zone                 | `string`      | n/a     | ✅        |
| `resource_group_name` | Resource group where the zone is created | `string`      | n/a     | ✅        |
| `tags`                | Tags to apply                            | `map(string)` | `{}`    | ❌        |

## Outputs

| Name            | Description                  |
| --------------- | ---------------------------- |
| `dns_zone_id`   | ID of the Private DNS zone   |
| `dns_zone_name` | Name of the Private DNS zone |

## Requirements
- OpenTofu or Terraform CLI
- AzureRM Provider ~> 3.0
- Azure Subscription with permission to manage
- Private DNS Zones