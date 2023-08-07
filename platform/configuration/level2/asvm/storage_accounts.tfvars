storage_accounts = {
  level3 = {
    name                      = "l3"
    resource_group_key        = "level3"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    network = {
      default_action = "Deny"
      bypass         = ["Logging", "Metrics", "AzureServices"]
      ip_rules       = ["3.125.133.33"]
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level3 = {
        name               = "stg-level3"
        resource_group_key = "level3"
        vnet_key           = "vnet_region1"
        subnet_key         = "level3"
        private_service_connection = {
          name                 = "stg-level3-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
      }
    }
    tags = {
      caf_environment = "sandpit"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level3"
    }
  }
  level4 = {
    name                      = "l4"
    resource_group_key        = "level4"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "GRS"
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    network = {
      default_action = "Deny"
      bypass         = ["Logging", "Metrics", "AzureServices"]
      ip_rules       = ["3.125.133.33"]
    }
    private_endpoints = {
      level4 = {
        name               = "stg-level4"
        resource_group_key = "level4"
        vnet_key           = "vnet_region1"
        subnet_key         = "level4"
        private_service_connection = {
          name                 = "stg-level4-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
      }
    }
    tags = {
      caf_environment = "sandpit"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level4"
    }
  }
}