resource_groups = {
  asvm_vnet = {
    name   = "caf-asvm-networking"
    region = "region1"
  }
  level3 = {
    name   = "caf-level3"
    region = "region1"
    tags = {
      level = "level3"
    }
  }
  level4 = {
    name   = "caf-level4"
    region = "region1"
    tags = {
      level = "level4"
    }
  }
}