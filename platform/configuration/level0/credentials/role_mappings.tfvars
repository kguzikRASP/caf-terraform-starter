
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      sp_credentials = {
        "Contributor" = {
          azuread_groups = {
            keys = [
              "identity"
            ]
            lz_key = "launchpad"
          }
        }
      }
    }
  }
}
