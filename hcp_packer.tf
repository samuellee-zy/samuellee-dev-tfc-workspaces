resource "tfe_workspace" "hcp-packer-deployment" {
  name                = "hcp-packer-deployment"
  organization        = var.orgName
  tag_names           = ["hcp", "packer", "deployment"]
  description         = "HCP Packer Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_packer.id
}

resource "tfe_workspace_variable_set" "dynamic-creds-varset" {
  variable_set_id = "varset-NcxPs57UB5X3e7AA"
  workspace_id    = tfe_workspace.hcp-packer-deployment.id
}


