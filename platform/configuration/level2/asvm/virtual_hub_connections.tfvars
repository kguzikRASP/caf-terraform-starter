virtual_hub_connections = {
  vnet_to_hub = {
    name = "vnet-asvm-prod-TO-vhub-prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    vnet = {
      vnet_key = "vnet_region1"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "defaultRouteTable"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
}