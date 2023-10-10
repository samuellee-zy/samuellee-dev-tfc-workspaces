resource "tfe_workspace" "cicdDemo" {
  name                = "tfc-cicd-demo"
  organization        = var.orgName
  tag_names           = ["aws", "api", "cicd"]
  description         = "CICD - API Driven Workflow Demo"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_Demos.id
}

resource "tfe_workspace_variable_set" "apiDrivenWorkflow-aws-dynamic-creds-varset" {
  workspace_id    = tfe_workspace.cicdDemo.id
  variable_set_id = data.tfe_outputs.samuellee-dev-tfc-dynamic-creds-varset-outputs.values.dynamic_creds_varset_id
}

resource "tfe_workspace_run_task" "cicdDemo-run-task" {
  workspace_id      = tfe_workspace.cicdDemo.id
  task_id           = data.tfe_organization_run_task.infracost.id
  enforcement_level = "advisory"
  stage             = "post_plan"
}



# resource "tfe_workspace" "hcpv-plus-controlGroupDemo" {
#   name                = "hcpv-plus-controlGroupDemo"
#   organization        = var.orgName
#   tag_names           = ["hcp", "vault", "deployment"]
#   description         = "HCP Vault Cluster Plus Tier Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_vault.id
# }

# resource "tfe_workspace" "hcp-waypoint-deployment" {
#   name                = "hcp-waypoint-deployment"
#   organization        = var.orgName
#   tag_names           = ["hcp", "waypoint", "deployment"]
#   description         = "HCP Waypoint Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_waypoint.id
# }

# resource "tfe_workspace" "hcp-vault-deployment" {
#   name                = "hcp-vault-deployment"
#   organization        = var.orgName
#   tag_names           = ["hcp", "vault", "deployment"]
#   description         = "HCP Vault Cluster Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_vault.id
# }

# resource "tfe_workspace" "hcp-packer-deployment" {
#   name                = "hcp-packer-deployment"
#   organization        = var.orgName
#   tag_names           = ["hcp", "packer", "deployment"]
#   description         = "HCP Packer Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_packer.id
# }

# resource "tfe_workspace_variable_set" "dynamic-creds-varset" {
#   variable_set_id = "varset-NcxPs57UB5X3e7AA"
#   workspace_id    = tfe_workspace.hcp-packer-deployment.id
# }

# resource "tfe_workspace" "hcp-boundary-deployment" {
#   name                = "hcp-boundary-deployment"
#   organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.organization
#   tag_names           = ["hcp", "boundary", "deployment"]
#   description         = "HCP Boundary Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.id
# }

# resource "tfe_workspace_variable_set" "hcp-org-client-id-client-secret" {
#   workspace_id    = tfe_workspace.hcp-boundary-deployment.id
#   variable_set_id = data.tfe_variable_set.hcp-org-client-id-client-secret.id
# }

# resource "tfe_workspace" "hcp-consul-deployment" {
#   name                = "hcp-consul-deployment"
#   organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_consul.organization
#   tag_names           = ["hcp", "consul", "deployment"]
#   description         = "HCP Consul Cluster Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_consul.id
# }
