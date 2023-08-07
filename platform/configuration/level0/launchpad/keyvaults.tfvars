keyvaults = {
  "level0" = {
    name                      = "l0"
    resource_group_key        = "level0"
    sku_name                  = "premium"
    purge_protection_enabled  = false
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level0"
      caf_environment = "sandpit"
    }
    network = {
      default_action = "Deny"
      bypass         = "AzureServices"
      ip_rules       = ["3.125.133.33"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      level0 = {
        name               = "kv-level0"
        resource_group_key = "level0"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "kv-level0-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
      }
    }
  }
  "level1" = {
    name                      = "l1"
    resource_group_key        = "level1"
    sku_name                  = "premium"
    purge_protection_enabled  = false
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level1"
      caf_environment = "sandpit"
    }
    network = {
      default_action = "Deny"
      bypass         = "AzureServices"
      ip_rules       = ["3.125.133.33"]
      subnets = {
        level1 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level1"
        }
      }
    }
    private_endpoints = {
      level1 = {
        name               = "kv-level1"
        resource_group_key = "level1"
        vnet_key           = "vnet_region1"
        subnet_key         = "level1"
        private_service_connection = {
          name                 = "kv-level1-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
      }
    }
  }
  "level2" = {
    name                      = "l2"
    resource_group_key        = "level2"
    sku_name                  = "premium"
    purge_protection_enabled  = false
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level2"
      caf_environment = "sandpit"
    }
    network = {
      default_action = "Deny"
      bypass         = "AzureServices"
      ip_rules       = ["3.125.133.33"]
      subnets = {
        level2 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level2"
        }
      }
    }
    private_endpoints = {
      level2 = {
        name               = "kv-level2"
        resource_group_key = "level2"
        vnet_key           = "vnet_region1"
        subnet_key         = "level2"
        private_service_connection = {
          name                 = "kv-level2-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
      }
    }
  }
}