landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "subscriptions"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      tfstate   = "caf_launchpad.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
