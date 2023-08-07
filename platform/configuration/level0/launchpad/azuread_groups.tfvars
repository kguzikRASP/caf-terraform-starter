azuread_groups = {
  caf_platform_maintainers = {
    name        = "platform-maintainers"
    description = "High privileged group to run all CAF deployments from vscode. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = [[]]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  caf_platform_contributors = {
    name        = "platform-contributors"
    description = "Can only execute terraform plans for level1 and level2. They can test platform improvements and propose PR."
    members = {
      object_ids = ["3a82ad91-acb1-4734-a604-9f667e94b368", []]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  level0 = {
    name = "level0"
    members = {
      azuread_service_principal_keys = ["level0"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  alz = {
    name = "alz"
    members = {
      azuread_service_principal_keys = ["alz"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  identity = {
    name = "caf-identity"
    members = {
      azuread_service_principal_keys = ["identity"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  management = {
    name = "management"
    members = {
      azuread_service_principal_keys = ["management"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  connectivity = {
    name = "connectivity"
    members = {
      azuread_service_principal_keys = ["connectivity"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  security = {
    name = "security"
    members = {
      azuread_service_principal_keys = ["security"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  subscription_creation_platform = {
    name = "subscription_creation_platform"
    members = {
      azuread_service_principal_keys = ["subscription_creation_platform"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
  subscription_creation_landingzones = {
    name = "subscription_creation_landingzones"
    members = {
      azuread_service_principal_keys = ["subscription_creation_landingzones"]
    }
    owners                 = ["3a82ad91-acb1-4734-a604-9f667e94b368"]
    prevent_duplicate_name = true
  }
}