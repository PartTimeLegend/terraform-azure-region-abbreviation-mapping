locals {
  azure_region = "East US 2"
}

module "region_abbreviation" {
  source = "../../"
}

output "region_abbreviation" {
  value = module.region_abbreviation.az_region_abbr_map[local.azure_region]
}

output "all_region_names" {
  value = module.region_abbreviation.region_names
}

output "all_abbreviations" {
  value = module.region_abbreviation.region_abbreviations
}
