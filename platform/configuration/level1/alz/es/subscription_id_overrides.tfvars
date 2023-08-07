subscription_id_overrides = {
  root           = []
  decommissioned = []
  sandboxes      = []
  landing-zones  = []
  platform       = []
  connectivity   = []
  management     = []
  identity       = []
}

subscription_id_overrides_by_keys = {
  connectivity = {
    connectivity = {
      lz_key = "subscriptions"
      key    = "connectivity"
    }
  }
  management = {
    launchpad = {
      lz_key = "subscriptions"
      key    = "launchpad"
    }
    management = {
      lz_key = "subscriptions"
      key    = "management"
    }
  }
  identity = {
    identity = {
      lz_key = "subscriptions"
      key    = "identity"
    }
  }
}
