# resource "tfe_workspace" "hcp-consul-deployment" {
#   name                = "hcp-consul-deployment"
#   organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_consul.organization
#   tag_names           = ["hcp", "consul", "deployment"]
#   description         = "HCP Consul Cluster Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_consul.id
# }
