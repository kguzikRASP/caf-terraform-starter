storage_accounts = {
  nsgflogs = {
    name                      = "nsglogs"
    resource_group_key        = "management"
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
    network = {
      default_action = "Deny"
      bypass         = ["Logging", "Metrics"]
      ip_rules       = ["3.125.133.33"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
  }
}