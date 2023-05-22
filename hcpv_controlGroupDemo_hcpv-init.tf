resource "tfe_workspace" "hcpv-plus-controlGroupDemo" {
  name                = "hcpv-plus-controlGroupDemo"
  organization        = var.orgName
  tag_names           = ["hcp", "vault", "deployment"]
  description         = "HCP Vault Cluster Plus Tier Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_vault.id
}
