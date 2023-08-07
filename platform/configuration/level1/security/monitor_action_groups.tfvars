monitor_action_groups = {
  security_operations = {
    action_group_name  = "Security Operations"
    shortname          = "secops"
    resource_group_key = "alerts"
    arm_role_alert = {
      reader = {
        name                    = "Monitoring Reader"
        role_name               = "Monitoring Reader"
        use_common_alert_schema = false
      }
    }
    email_receiver = {
      noc = {
        name                    = "email_alert_support1"
        email_address           = "email@address.com"
        use_common_alert_schema = false
      }
    }
  }
}