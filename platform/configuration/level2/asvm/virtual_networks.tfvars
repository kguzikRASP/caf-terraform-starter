vnets = {
  vnet_region1 = {
    resource_group_key = "asvm_vnet"
    vnet = {
      name          = "gitops_vnet_asvm"
      address_space = ["10.100.1.0/24"]
    }
    subnets = {
      level3 = {
        name                                           = "caf-level3"
        cidr                                           = ["10.100.1.0/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      level4 = {
        name                                           = "caf-level4"
        cidr                                           = ["10.100.1.32/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      credentials = {
        name                                           = "credentials"
        cidr                                           = ["10.100.1.64/27"]
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}