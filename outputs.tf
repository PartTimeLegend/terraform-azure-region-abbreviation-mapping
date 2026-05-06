output "az_region_abbr_map" {
  value       = var.az_region_abbr_map
  description = "The canonical map of region names to abbreviations."
}

output "lookup_region_abbreviation" {
  value       = local.az_region_abbr_lookup_map
  description = "Map for looking up a region abbreviation from either the standard display name or a normalized lowercase name without spaces."
}

output "region_names" {
  value       = keys(var.az_region_abbr_map)
  description = "List of canonical Azure region display names."
}

output "region_abbreviations" {
  value       = values(var.az_region_abbr_map)
  description = "List of all region abbreviations."
}
