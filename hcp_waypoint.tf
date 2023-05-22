resource "tfe_workspace" "hcp-waypoint-deployment" {
  name                = "hcp-waypoint-deployment"
  organization        = var.orgName
  tag_names           = ["hcp", "waypoint", "deployment"]
  description         = "HCP Waypoint Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_waypoint.id
}
