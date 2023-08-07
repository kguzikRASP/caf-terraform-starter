# Cloud Adoption Framework landing zones for Terraform - Ignite the Azure Platform and landing zones


:rocket: START HERE: [Follow the onboarding guide from](https://aztfmod.github.io/documentation/docs/azure-landing-zones/landingzones/platform/org-setup)


For further executions or command, you can refer to the following sections

## Commands

### Rover ignite the platform

Rover ignite will  process the YAML files and start building the configuration structure of the TFVARS. 

Please note that during the creation of the platform landingones you will have to run rover ignite multiple times as some deployments are required to be completed before you can perform the next steps. 

The best course of actions is to follow the readme files generated within each landing zones, as rover ignite creates the tfvars and also the documentation.

Once you are ready to ingite, just run:

```bash
rover login -t rasphosting.onmicrosoft.com -s adf613cb-49e2-4495-9b6f-e18d05a72ad1

ansible-playbook $(readlink -f ./landingzones/templates/ansible/ansible.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)" \
  -e base_folder=$(pwd)

```

### Next step

Once the rover ignite command has been executed, go to your configuration folder when the platform launchpad configuration has been created.

Get started with the [launchpad](/tf/caf/platform/definition/level0/launchpad)



## References

Whenever needed, or under a profesional supervision you can use the following commands

### Clone the landingzone project (Terraform base code)

```bash
git clone https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
cd /tf/caf/landingzones && git fetch origin
git checkout rasptest

```

### Regenerate the definition folder

For your reference, if you need to re-generate the YAML definition files later, you can run the following command: 

```bash

ansible-playbook $(readlink -f ./landingzones/templates/ansible/walk-through-ci.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)" \
  -e base_folder=$(pwd) \
  -e topology_file=/tf/caf/landingzones/templates/platform/caf_platform_prod_nonprod.yaml \
  -e GITHUB_SERVER_URL= \
  -e GITHUB_REPOSITORY= \
  -e GITOPS_SERVER_URL=/ \
  -e RUNNER_NUMBERS=4 \
  -e AGENT_TOKEN=BBWFLKTPSK3XU5TEND43UYTE2D5AM \
  -e gitops_agent=github \
  -e ROVER_AGENT_DOCKER_IMAGE=1.4.6-2307.2804-github \
  -e subscription_deployment_mode=multi_subscriptions \
  -e sub_management=adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -e sub_connectivity=adf613cb-49e2-4495-9b6f-e18d05a72ad1 \
  -e sub_identity=4ab307c0-61d0-41af-afc5-5e90c04fee4c \
  -e sub_security=4ab307c0-61d0-41af-afc5-5e90c04fee4c \
  -e gitops_pipelines=github \
  -e TF_VAR_environment=sandpit \
  -e bootstrap_sp_object_id= \
  -e template_folder="$(pwd)/platform/definition"

```
