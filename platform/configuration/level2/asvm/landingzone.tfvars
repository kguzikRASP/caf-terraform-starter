landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "asvm"
  global_settings_key = "connectivity_virtual_hubs_prod"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    connectivity_virtual_hubs_prod = {
      tfstate   = "connectivity_virtual_hubs_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_private_dns_prod = {
      tfstate   = "connectivity_private_dns_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_secure_firewalls_prod = {
      tfstate   = "connectivity_secure_firewalls_prod.tfstate"
      workspace = "tfstate"
    }
    identity_level2_prod = {
      tfstate   = "identity_level2_prod.tfstate"
      workspace = "tfstate"
    }
  }
}
