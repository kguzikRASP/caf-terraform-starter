#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#
subscriptions = {
  launchpad = {
    name            = "management"
    create_alias    = false
    subscription_id = "adf613cb-49e2-4495-9b6f-e18d05a72ad1"
  }
  identity = {
    name            = "identity"
    create_alias    = false
    subscription_id = "4ab307c0-61d0-41af-afc5-5e90c04fee4c"
  }
  connectivity = {
    name            = "connectivity"
    create_alias    = false
    subscription_id = "adf613cb-49e2-4495-9b6f-e18d05a72ad1"
  }
  management = {
    name            = "management"
    create_alias    = false
    subscription_id = "adf613cb-49e2-4495-9b6f-e18d05a72ad1"
  }
  security = {
    name            = "security"
    create_alias    = false
    subscription_id = "4ab307c0-61d0-41af-afc5-5e90c04fee4c"
  }
}