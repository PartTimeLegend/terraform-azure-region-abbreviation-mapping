output "az_region_abbr_map" {
  value       = var.az_region_abbr_map
  description = "The map of region names to abbreviations."
}

output "lookup_region_abbreviation" {
  value       = var.az_region_abbr_map
  description = "Function to lookup a region's abbreviation from its full name."
}

output "region_names" {
  value       = keys(var.az_region_abbr_map)
  description = "List of all Azure region names."
}

output "region_abbreviations" {
  value       = values(var.az_region_abbr_map)
  description = "List of all region abbreviations."
}
