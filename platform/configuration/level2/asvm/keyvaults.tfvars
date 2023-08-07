keyvaults = {
  "level3" = {
    name                      = "l3"
    resource_group_key        = "level3"
    sku_name                  = "standard"
    purge_protection_enabled  = false
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "sandpit"
    }
    network = {
      default_action = "Deny"
      bypass         = "AzureServices"
      ip_rules       = ["3.125.133.33"]
    }
    private_endpoints = {
      level3 = {
        name               = "kv-level3"
        resource_group_key = "level3"
        vnet_key           = "vnet_region1"
        subnet_key         = "level3"
        private_service_connection = {
          name                 = "kv-level3-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
      }
    }
  }
  "level4" = {
    name                      = "l4"
    resource_group_key        = "level4"
    sku_name                  = "standard"
    purge_protection_enabled  = false
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "sandpit"
    }
    network = {
      default_action = "Deny"
      bypass         = "AzureServices"
      ip_rules       = ["3.125.133.33"]
    }
    private_endpoints = {
      level4 = {
        name               = "kv-level4"
        resource_group_key = "level4"
        vnet_key           = "vnet_region1"
        subnet_key         = "level4"
        private_service_connection = {
          name                 = "kv-level4-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
      }
    }
  }
}