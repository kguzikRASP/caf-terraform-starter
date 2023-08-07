network_profiles = {
  level0 = {
    name = "level0"
    resource_group = {
      lz_key = "launchpad"
      key    = "gitops"
    }
    container_network_interface = {
      name = "level0"
      ip_configurations = {
        gitops = {
          name       = "ipconfig"
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
  }
}