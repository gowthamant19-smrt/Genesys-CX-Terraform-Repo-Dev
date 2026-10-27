# Read-only lookups of existing Genesys Cloud objects used by testqueuegj.
# Data sources never create, update or delete anything.

data "genesyscloud_auth_division_home" "Home" {}

data "genesyscloud_user" "sujith_rekhawar_ibm_com" {
  email = "sujith.rekhawar@ibm.com"
}

data "genesyscloud_routing_wrapupcode" "ACW" {
  name = "ACW"
}

data "genesyscloud_routing_wrapupcode" "Meeting" {
  name = "Meeting"
}
