role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      "level3" = {
        "Reader" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
      "level4" = {
        "Reader" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
    }
    storage_accounts = {
      "level3" = {
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
      "level4" = {
        "Storage Blob Data Contributor" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
    }
    keyvaults = {
      "level3" = {
        "Key Vault Secrets Officer" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
      "level4" = {
        "Key Vault Secrets Officer" = {
          logged_in = {
            keys = ["user"]
          }
        }
      }
    }
  }
}