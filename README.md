# Terraform Azure Region Abbreviation Mapping

[![Tag](https://github.com/PartTimeLegend/terraform-azure-region-abbreviation-mapping/actions/workflows/tag.yml/badge.svg)](https://github.com/PartTimeLegend/terraform-azure-region-abbreviation-mapping/actions/workflows/tag.yml) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub repo file count](https://img.shields.io/github/directory-file-count/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub repo size](https://img.shields.io/github/repo-size/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub Sponsors](https://img.shields.io/github/sponsors/parttimelegend) ![GitHub](https://img.shields.io/github/license/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub last commit](https://img.shields.io/github/last-commit/parttimelegend/terraform-azure-region-abbreviation-mapping)

A simple module that provides mappings between Azure region names and their standardized abbreviations for consistent resource naming.

## Features

- Complete mapping of Azure region names to official abbreviations
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
  value = module.region-abbreviation-mapping.az_region_abbr_map[local.azure_region]
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
| `az_region_abbr_map` | Complete map of Azure region names to their abbreviations |
| `lookup_region_abbreviation` | Function to lookup a region's abbreviation |
| `region_names` | List of all Azure region names |
| `region_abbreviations` | List of all region abbreviations |

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
