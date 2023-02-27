resource "tfe_workspace" "hcp-packer-deployment" {
  name                = "hcp-packer-deployment"
  organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_packer.organization
  tag_names           = ["hcp", "packer", "deployment"]
  description         = "HCP Packer Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_packer.id
}
