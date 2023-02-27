resource "tfe_workspace" "hcp-boundary-deployment" {
  name                = "hcp-boundary-deployment"
  organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.organization
  tag_names           = ["hcp", "boundary", "deployment"]
  description         = "HCP Boundary Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.id
}
