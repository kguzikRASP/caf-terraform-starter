azuread_credentials = {
  level0 = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "level0"
    }
    keyvaults = {
      cred_level0 = {
        secret_prefix = "sp"
      }
    }
  }
  identity = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "identity"
    }
    keyvaults = {
      cred_identity = {
        secret_prefix = "sp"
      }
    }
  }
  management = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "management"
    }
    keyvaults = {
      cred_management = {
        secret_prefix = "sp"
      }
    }
  }
  alz = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "alz"
    }
    keyvaults = {
      cred_alz = {
        secret_prefix = "sp"
      }
    }
  }
  connectivity = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "connectivity"
    }
    keyvaults = {
      cred_connectivity = {
        secret_prefix = "sp"
      }
    }
  }
  security = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "security"
    }
    keyvaults = {
      cred_security = {
        secret_prefix = "sp"
      }
    }
  }
  subscription_creation_platform = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "subscription_creation_platform"
    }
    keyvaults = {
      cred_subscription_creation_platform = {
        secret_prefix = "sp"
      }
    }
  }
  subscription_creation_landingzones = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "subscription_creation_landingzones"
    }
    keyvaults = {
      cred_subscription_creation_landingzones = {
        secret_prefix = "sp"
      }
    }
  }
}