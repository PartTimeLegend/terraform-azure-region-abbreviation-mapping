variable "az_region_abbr_map" {
  type        = map(string)
  description = "Map of Azure region display names to their official short abbreviations for naming resources"
  default = {
    "East US"                      = "eus"
    "East US 2"                    = "eus2"
    "South Central US"             = "scus"
    "West US 2"                    = "wus2"
    "West US 3"                    = "wus3"
    "Australia East"               = "aue"
    "Southeast Asia"               = "sea"
    "North Europe"                 = "neu"
    "Sweden Central"               = "sdc"
    "UK South"                     = "uks"
    "West Europe"                  = "weu"
    "Central US"                   = "cus"
    "North Central US"             = "ncus"
    "West US"                      = "wus"
    "South Africa North"           = "san"
    "Central India"                = "cin"
    "East Asia"                    = "ea"
    "Japan East"                   = "jpe"
    "Korea Central"                = "krc"
    "Canada Central"               = "cac"
    "France Central"               = "frc"
    "Germany West Central"         = "gwc"
    "Italy North"                  = "itn"
    "Norway East"                  = "noe"
    "Poland Central"               = "plc"
    "Switzerland North"            = "szn"
    "UAE North"                    = "uaen"
    "Brazil South"                 = "brs"
    "Central US EUAP"              = "cuseuap"
    "East US 2 EUAP"               = "eus2euap"
    "Qatar Central"                = "qac"
    "Canada East"                  = "cae"
    "France South"                 = "frs"
    "Germany North"                = "gn"
    "Norway West"                  = "now"
    "Switzerland West"             = "szw"
    "UK West"                      = "ukw"
    "UAE Central"                  = "uaec"
    "Brazil Southeast"             = "brse"
    "Japan West"                   = "jpw"
    "Australia Central"            = "auc"
    "Australia Central 2"          = "auc2"
    "Australia Southeast"          = "ause"
    "Korea South"                  = "krs"
    "South India"                  = "sin"
    "West India"                   = "win"
    "South Africa West"            = "saw"
    "Sweden South"                 = "sds"
    "China East"                   = "cne"
    "China North"                  = "cnn"
    "China East 2"                 = "cne2"
    "China North 2"                = "cnn2"
    "China North 3"                = "cnn3"
    "USGov Arizona"                = "usga"
    "USGov Virginia"               = "usgv"
    "USGov Texas"                  = "usgt"
    "USDoD Central"                = "usdc"
    "USDoD East"                   = "usde"
    "US Gov Non-Regional"          = "usgnr"
    "Mexico Central"               = "mxc"
    "Israel Central"               = "ilc"
    "Austria East"                 = "ate"
    "Malaysia South"               = "mys"
    "Taiwan North"                 = "twn"
    "Spain Central"                = "spc"
  }
}
