# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t rasphosting.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout rasptest

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/asvm \
  -tfstate_subscription_id adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -target_subscription adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env sandpit \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

