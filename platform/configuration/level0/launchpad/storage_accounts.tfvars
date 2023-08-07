storage_accounts = {
  level0 = {
    name                      = "l0"
    resource_group_key        = "level0"
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
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level0 = {
        name               = "stg-level0"
        resource_group_key = "level0"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "stg-level0-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
      }
    }
    tags = {
      caf_environment = "sandpit"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level0"
    }
  }
  level1 = {
    name                      = "l1"
    resource_group_key        = "level1"
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
      subnets = {
        level1 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level1"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level1 = {
        name               = "stg-level1"
        resource_group_key = "level1"
        vnet_key           = "vnet_region1"
        subnet_key         = "level1"
        private_service_connection = {
          name                 = "stg-level1-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
      }
    }
    tags = {
      caf_environment = "sandpit"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level1"
    }
  }
  level2 = {
    name                      = "l2"
    resource_group_key        = "level2"
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
      subnets = {
        level2 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level2"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level2 = {
        name               = "stg-level2"
        resource_group_key = "level2"
        vnet_key           = "vnet_region1"
        subnet_key         = "level2"
        private_service_connection = {
          name                 = "stg-level2-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
      }
    }
    tags = {
      caf_environment = "sandpit"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level2"
    }
  }
}