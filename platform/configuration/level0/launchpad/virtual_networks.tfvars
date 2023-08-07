vnets = {
  vnet_region1 = {
    resource_group_key = "gitops"
    vnet = {
      name          = "gitops"
      address_space = ["10.100.0.0/24"]
    }
    subnets = {
      level0 = {
        name                                           = "level0"
        cidr                                           = ["10.100.0.0/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
        delegation = {
          name               = "Microsoft.ContainerInstance/containerGroups"
          service_delegation = "Microsoft.ContainerInstance/containerGroups"
          actions            = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
      }
      level1 = {
        name                                           = "level1"
        cidr                                           = ["10.100.0.32/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      level2 = {
        name                                           = "level2"
        cidr                                           = ["10.100.0.64/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      credentials = {
        name                                           = "credentials"
        cidr                                           = ["10.100.0.96/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}