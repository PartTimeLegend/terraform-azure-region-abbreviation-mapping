# Terraform Azure Region Abbreviation Mapping

[![Tag](https://github.com/PartTimeLegend/terraform-azure-region-abbreviation-mapping/actions/workflows/tag.yml/badge.svg)](https://github.com/PartTimeLegend/terraform-azure-region-abbreviation-mapping/actions/workflows/tag.yml) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub repo file count](https://img.shields.io/github/directory-file-count/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub repo size](https://img.shields.io/github/repo-size/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub Sponsors](https://img.shields.io/github/sponsors/parttimelegend) ![GitHub](https://img.shields.io/github/license/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/parttimelegend/terraform-azure-region-abbreviation-mapping) ![GitHub last commit](https://img.shields.io/github/last-commit/parttimelegend/terraform-azure-region-abbreviation-mapping)

Really simple map to convert an Azure regional name into an abbreviated form.

```terraform
locals {
  azure_region = "Central US"
}

module "region-abbreviation-mapping" {
  source  = "PartTimeLegend/region-abbreviation-mapping/azure"
}

output "abbr" {
  value = module.region-abbreviation-mapping.az_region_abbr_map[local.azure_region]
}
```
