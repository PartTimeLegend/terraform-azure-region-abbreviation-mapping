# Terraform Azure Region Abbreviation Mapping

[![Tag](https://github.com/PartTimeLegend/terraform-azure-region-abbreviation-mapping/actions/workflows/tag.yml/badge.svg)](https://github.com/PartTimeLegend/terraform-azure-region-abbreviation-mapping/actions/workflows/tag.yml)

A simple module that provides mappings between Azure region names and their standardized abbreviations for consistent resource naming.

## Features

- Complete mapping of Azure region names to official abbreviations
- Supports both canonical Azure display names and normalized lowercase names without spaces
- Helper functions to simplify region naming in Azure resources
- Regularly maintained with new Azure regions
- Zero external dependencies

## Usage

### Basic Usage

```terraform
locals {
  azure_region = "Central US"
}

module "region-abbreviation-mapping" {
  source  = "PartTimeLegend/region-abbreviation-mapping/azure"
  version = "~> 1.0" # Replace with the latest version
}

output "region_abbreviation" {
  value = module.region-abbreviation-mapping.lookup_region_abbreviation[local.azure_region]
}
```

### Using Normalized Region Names

```terraform
module "region-abbreviation-mapping" {
  source  = "PartTimeLegend/region-abbreviation-mapping/azure"
}

locals {
  canonical_region  = "UK West"
  normalized_region = "ukwest"
}

output "canonical_region_abbreviation" {
  value = module.region-abbreviation-mapping.lookup_region_abbreviation[local.canonical_region]
}

output "normalized_region_abbreviation" {
  value = module.region-abbreviation-mapping.lookup_region_abbreviation[local.normalized_region]
}
```

### Using the Region Lookup Function

```terraform
module "region-abbreviation-mapping" {
  source  = "PartTimeLegend/region-abbreviation-mapping/azure"
}

locals {
  resource_name = "${module.region-abbreviation-mapping.lookup_region_abbreviation["East US 2"]}-app-service"
}
```

## Available Outputs

| Name | Description |
|------|-------------|
| `az_region_abbr_map` | Canonical map of Azure region names to their abbreviations |
| `lookup_region_abbreviation` | Lookup map supporting standard display names and normalized lowercase names without spaces |
| `region_names` | List of canonical Azure region names |
| `region_abbreviations` | List of all region abbreviations |

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
