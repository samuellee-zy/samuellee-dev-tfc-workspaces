resource "tfe_workspace" "ghaDoormat" {
  name                = "gha-doormat-aws-setup"
  organization        = var.orgName
  tag_names           = ["aws", "gha", "doormat"]
  description         = "Setting up IAM role for Doormat Github Actions"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = "prj-Ci5QeYa8htpyi4Zj"
}

resource "tfe_workspace_variable_set" "ghaDoormat-aws-dynamic-creds-varset" {
  workspace_id    = tfe_workspace.ghaDoormat.id
  variable_set_id = data.tfe_outputs.samuellee-dev-tfc-dynamic-creds-varset-outputs.values.dynamic_creds_varset_id
}
