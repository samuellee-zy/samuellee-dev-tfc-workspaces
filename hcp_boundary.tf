# resource "tfe_workspace" "hcp-boundary-deployment" {
#   name                = "hcp-boundary-deployment"
#   organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.organization
#   tag_names           = ["hcp", "boundary", "deployment"]
#   description         = "HCP Boundary Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.id
# }

# resource "tfe_workspace_variable_set" "hcp-org-client-id-client-secret" {
#   workspace_id    = tfe_workspace.hcp-boundary-deployment.id
#   variable_set_id = data.tfe_variable_set.hcp-org-client-id-client-secret.id
# }
