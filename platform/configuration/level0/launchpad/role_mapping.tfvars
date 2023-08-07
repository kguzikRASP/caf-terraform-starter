role_mapping = {
  built_in_role_mapping = {
    management_group = {
      "root" = {
        "User Access Administrator" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Management Group Contributor" = {
          azuread_groups = {
            keys = ["alz", "caf_platform_maintainers"]
          }
        }
        "Owner" = {
          azuread_groups = {
            keys = ["alz", "caf_platform_maintainers"]
          }
        }
        "Reader" = {
          azuread_groups = {
            keys = ["caf_platform_contributors"]
          }
        }
      }
    }
    subscriptions = {
      "logged_in_subscription" = {
        "Owner" = {
          azuread_groups = {
            keys = ["level0", "subscription_creation_platform", "caf_platform_maintainers"]
          }
        }
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
    }
    resource_groups = {
      "level0" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
      "level1" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
      "level2" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity", "management", "connectivity", "security", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
    }
    storage_accounts = {
      "level0" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity", "caf_platform_maintainers"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["management", "alz", "security", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
      "level1" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["caf_platform_maintainers", "identity", "management", "alz", "security", "subscription_creation_platform"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["caf_platform_contributors", "level0"]
          }
        }
      }
      "level2" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["identity", "connectivity", "management", "security", "caf_platform_maintainers", "level0"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["subscription_creation_landingzones", "caf_platform_contributors"]
          }
        }
      }
    }
    keyvaults = {
      "level0" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_platform_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity", "caf_platform_maintainers"]
          }
        }
      }
      "level1" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_platform_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
      "level2" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_platform_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "connectivity", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
    }
  }
}