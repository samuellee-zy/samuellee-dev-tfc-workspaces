
resource "tfe_workspace" "hcp-vault-deployment" {
  name                = "hcp-vault-deployment"
  organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_vault.organization
  tag_names           = ["hcp", "vault", "deployment"]
  description         = "HCP Vault Cluster Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_vault.id
}
