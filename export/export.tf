terraform {
  required_version = ">= 1.5.0"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.80"
    }
  }
}

# Credentials come from GENESYSCLOUD_OAUTHCLIENT_ID, GENESYSCLOUD_OAUTHCLIENT_SECRET
# and GENESYSCLOUD_REGION. Point them at the dev org before running.
provider "genesyscloud" {}

resource "genesyscloud_tf_export" "dev_export" {
  directory               = "./raw_output"
  export_format           = "hcl"
  include_state_file      = false
  split_files_by_resource = true
  # Off so users, divisions and wrap-up codes are not pulled into the export.
  enable_dependency_resolution = false
  log_permission_errors        = true

  include_filter_resources = [
    "genesyscloud_routing_queue",
    "genesyscloud_routing_skill"
  ]
}
