landingzone = {
  backend_type        = "azurerm"
  level               = "level0"
  key                 = "gitops_agents"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      tfstate   = "caf_launchpad.tfstate"
      workspace = "tfstate"
    }
  }
}
