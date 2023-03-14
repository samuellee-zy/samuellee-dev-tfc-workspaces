resource "tfe_workspace" "ansarada" {
  name                = "ansarada-ecs-demo"
  organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.organization
  tag_names           = ["aws", "customer"]
  description         = "Ansarada Demo ECS Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_ansarada.id
}
