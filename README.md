# Terraform Azure Region Abbreviation Mapping

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
