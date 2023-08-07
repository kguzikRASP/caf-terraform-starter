
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t rasphosting.onmicrosoft.com -s adf613cb-49e2-4495-9b6f-e18d05a72ad1

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/identity \
  -tfstate_subscription_id adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -target_subscription adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -tfstate identity.tfstate \
  -env sandpit \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
