
### Generate launchpad credentials

```bash
# For manual bootstrap:
# Login to the subscription empty14-KG with the user kamil.guzik_ringieraxelspringer.pl#EXT#@rasphosting.onmicrosoft.com
rover login -t rasphosting.onmicrosoft.com

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level0/credentials \
  -tfstate_subscription_id adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -target_subscription adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env sandpit \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml ignite.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level0/credentials \
  -tfstate_subscription_id adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -target_subscription adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env sandpit \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a apply

```

```bash
# On success, re-execute the rover ignite

ansible-playbook $(readlink -f ./landingzones/templates/ansible/ansible.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)"

```

Now if you refresh the readme of the credentials deployment, you will notice the rover command has been updated to impersonate the execution of the rover based on the credentials that have just been created and stored in the keyvault. The goal here is to execute the deployment steps using the same privileges that will be used later when using a pipeline.

Just re-execute the plan/apply command as above and you will notice the rover will login as the identity service principal. When executed, execute a rover logout as the next step will be executed under a different security context.

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the subscription services](../../level1/subscriptions/readme.md)
