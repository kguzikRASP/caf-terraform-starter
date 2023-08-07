container_groups = {
  agent0 = {
    containers = {
      rover_agent0 = {
        cpu = 4
        environment_variables = {
          AGENT_NAME   = "agent0"
          LABELS       = "platform"
          ROVER_RUNNER = true
          URL          = "https://github.com/kguzikRASP/caf-terraform-landingzones"
        }
        image  = "aztfmod/rover-agent:1.1.9-2206.301920-preview-github"
        memory = 2
        name   = "rover-agent0"
        ports = {
          ssh = {
            port     = 22
            protocol = "TCP"
          }
        }
        secure_environment_variables = {
          AGENT_TOKEN = "BBWFLKTPSK3XU5TEND43UYTE2D5AM"
        }
      }
    }
    ip_address_type = "Private"
    name            = "rover-platform-agent0"
    network_profile = {
      key = "level0"
    }
    os_type = "Linux"
    region  = "region1"
    resource_group = {
      key    = "gitops"
      lz_key = "launchpad"
    }
    restart_policy = "Never"
  }
  agent1 = {
    containers = {
      rover_agent1 = {
        cpu = 4
        environment_variables = {
          AGENT_NAME   = "agent1"
          LABELS       = "platform"
          ROVER_RUNNER = true
          URL          = "https://github.com/kguzikRASP/caf-terraform-landingzones"
        }
        image  = "aztfmod/rover-agent:1.1.9-2206.301920-preview-github"
        memory = 2
        name   = "rover-agent1"
        ports = {
          ssh = {
            port     = 22
            protocol = "TCP"
          }
        }
        secure_environment_variables = {
          AGENT_TOKEN = "BBWFLKTPSK3XU5TEND43UYTE2D5AM"
        }
      }
    }
    ip_address_type = "Private"
    name            = "rover-platform-agent1"
    network_profile = {
      key = "level0"
    }
    os_type = "Linux"
    region  = "region1"
    resource_group = {
      key    = "gitops"
      lz_key = "launchpad"
    }
    restart_policy = "Never"
  }
  agent2 = {
    containers = {
      rover_agent2 = {
        cpu = 4
        environment_variables = {
          AGENT_NAME   = "agent2"
          LABELS       = "platform"
          ROVER_RUNNER = true
          URL          = "https://github.com/kguzikRASP/caf-terraform-landingzones"
        }
        image  = "aztfmod/rover-agent:1.1.9-2206.301920-preview-github"
        memory = 2
        name   = "rover-agent2"
        ports = {
          ssh = {
            port     = 22
            protocol = "TCP"
          }
        }
        secure_environment_variables = {
          AGENT_TOKEN = "BBWFLKTPSK3XU5TEND43UYTE2D5AM"
        }
      }
    }
    ip_address_type = "Private"
    name            = "rover-platform-agent2"
    network_profile = {
      key = "level0"
    }
    os_type = "Linux"
    region  = "region1"
    resource_group = {
      key    = "gitops"
      lz_key = "launchpad"
    }
    restart_policy = "Never"
  }
  level0 = {
    containers = {
      rover_level0 = {
        cpu = 4
        environment_variables = {
          AGENT_NAME   = "rover_level0"
          LABELS       = "platform,master"
          ROVER_RUNNER = true
          URL          = "https://github.com/kguzikRASP/caf-terraform-landingzones"
        }
        image  = "aztfmod/rover-agent:1.1.9-2206.301920-preview-github"
        memory = 2
        name   = "rover-level0"
        ports = {
          ssh = {
            port     = 22
            protocol = "TCP"
          }
        }
        secure_environment_variables = {
          AGENT_TOKEN = "BBWFLKTPSK3XU5TEND43UYTE2D5AM"
        }
      }
    }
    ip_address_type = "Private"
    name            = "rover-platform"
    network_profile = {
      key = "level0"
    }
    os_type = "Linux"
    region  = "region1"
    resource_group = {
      key    = "gitops"
      lz_key = "launchpad"
    }
    restart_policy = "Never"
  }
}