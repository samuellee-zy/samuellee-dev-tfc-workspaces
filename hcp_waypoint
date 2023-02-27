resource "tfe_workspace" "hcp-waypoint-deployment" {
  name                = "HCP Waypoint Deployment"
  organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_waypoint.organization
  tag_names           = ["hcp", "waypoint", "deployment"]
  description         = "HCP Waypoint Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_waypoint.id
}
