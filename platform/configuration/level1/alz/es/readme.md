# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to int-5.6.0

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t rasphosting.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout int-5.6.0

rover \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/platform/configuration/level1/alz/es \
  -tfstate_subscription_id adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -target_subscription adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -tfstate alz_es.tfstate \
  -env sandpit \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_es.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
