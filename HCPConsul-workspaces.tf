resource "tfe_workspace" "hcpConsul" {
  name                = "hcp-consul"
  organization        = var.orgName
  tag_names           = ["hcp", "consul"]
  description         = "HCP Consul Cluster"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcpConsul.id
}

resource "tfe_workspace_variable_set" "hcpConsul-aws-dynamic-creds-varset" {
  workspace_id    = tfe_workspace.hcpConsul.id
  variable_set_id = data.tfe_outputs.samuellee-dev-tfc-dynamic-creds-varset-outputs.values.dynamic_creds_varset_id
}

resource "tfe_workspace_policy_set" "hcpConsul-infracost" {
  policy_set_id = data.tfe_policy_set.infracost.id
  workspace_id  = tfe_workspace.hcpConsul.id
}
