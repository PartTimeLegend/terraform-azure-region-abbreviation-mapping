variable "az_region_abbr_map" {
  type        = map(string)
  description = "Map of Azure region display names to their official short abbreviations for naming resources"
  default = {
    "Australia Central"    = "auc"
    "Australia Central 2"  = "auc2"
    "Australia East"       = "aue"
    "Australia Southeast"  = "ause"
    "Austria East"         = "ate"
    "Belgium Central"      = "bec"
    "Brazil South"         = "brs"
    "Brazil Southeast"     = "brse"
    "Canada Central"       = "cac"
    "Canada East"          = "cae"
    "Central India"        = "cin"
    "Central US"           = "cus"
    "Central US EUAP"      = "cuseuap"
    "Chile Central"        = "clc"
    "China East"           = "cne"
    "China East 2"         = "cne2"
    "China East 3"         = "cne3"
    "China North"          = "cnn"
    "China North 2"        = "cnn2"
    "China North 3"        = "cnn3"
    "Denmark East"         = "dke"
    "East Asia"            = "ea"
    "East US"              = "eus"
    "East US 2"            = "eus2"
    "East US 2 EUAP"       = "eus2euap"
    "East US STG"          = "eusstg"
    "France Central"       = "frc"
    "France South"         = "frs"
    "Germany Central"      = "gec"
    "Germany North"        = "gn"
    "Germany Northeast"    = "gne"
    "Germany West Central" = "gwc"
    "Indonesia Central"    = "idc"
    "India South Central"  = "scin"
    "Israel Central"       = "ilc"
    "Italy North"          = "itn"
    "Jio India Central"    = "jic"
    "Jio India West"       = "jiw"
    "Japan East"           = "jpe"
    "Japan West"           = "jpw"
    "Korea Central"        = "krc"
    "Korea South"          = "krs"
    "Malaysia South"       = "mys"
    "Malaysia West"        = "myw"
    "Mexico Central"       = "mxc"
    "New Zealand North"    = "nzn"
    "North Central US"     = "ncus"
    "North Central US STG" = "ncusstg"
    "North Europe"         = "neu"
    "Norway East"          = "noe"
    "Norway West"          = "now"
    "Poland Central"       = "plc"
    "Qatar Central"        = "qac"
    "South Africa North"   = "san"
    "South Africa West"    = "saw"
    "South Central US"     = "scus"
    "South Central US STG" = "scusstg"
    "South India"          = "sin"
    "Southeast Asia"       = "sea"
    "Southeast US"         = "seus"
    "Spain Central"        = "spc"
    "Sweden Central"       = "sdc"
    "Sweden South"         = "sds"
    "Switzerland North"    = "szn"
    "Switzerland West"     = "szw"
    "Taiwan North"         = "twn"
    "Taiwan Northwest"     = "twnw"
    "UAE Central"          = "uaec"
    "UAE North"            = "uaen"
    "UK South"             = "uks"
    "UK West"              = "ukw"
    "US Gov Non-Regional"  = "usgnr"
    "USDoD Central"        = "usdc"
    "USDoD East"           = "usde"
    "USGov Arizona"        = "usga"
    "USGov Iowa"           = "usgi"
    "USGov Texas"          = "usgt"
    "USGov Virginia"       = "usgv"
    "West Central US"      = "wcus"
    "West Europe"          = "weu"
    "West India"           = "win"
    "West US"              = "wus"
    "West US 2"            = "wus2"
    "West US 3"            = "wus3"
    "West US STG"          = "wusstg"
  }
}

locals {
  az_region_abbr_map_normalized = {
    for region_name, abbreviation in var.az_region_abbr_map :
    lower(replace(region_name, " ", "")) => abbreviation
  }

  az_region_abbr_map_aliases = {
    "US Gov Arizona"  = var.az_region_abbr_map["USGov Arizona"]
    "US Gov Iowa"     = var.az_region_abbr_map["USGov Iowa"]
    "US Gov Texas"    = var.az_region_abbr_map["USGov Texas"]
    "US Gov Virginia" = var.az_region_abbr_map["USGov Virginia"]
    "US DoD Central"  = var.az_region_abbr_map["USDoD Central"]
    "US DoD East"     = var.az_region_abbr_map["USDoD East"]
    "South Central India" = var.az_region_abbr_map["India South Central"]
  }

  az_region_abbr_lookup_map = merge(
    var.az_region_abbr_map,
    local.az_region_abbr_map_aliases,
    local.az_region_abbr_map_normalized,
  )
}
