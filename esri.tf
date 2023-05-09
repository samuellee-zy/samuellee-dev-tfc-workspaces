# resource "tfe_workspace" "esri-ws" {
#   name                = "esri-demo"
#   organization        = var.orgName
#   tag_names           = ["aws", "customer", "sentinel"]
#   description         = "Esri Demo Deployment"
#   execution_mode      = "remote"
#   assessments_enabled = false
#   auto_apply          = true
#   project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_customer_demos.id
#   vcs_repo {
#     identifier         = "samuellee-zy/customer-esri"
#     branch             = "main"
#     ingress_submodules = false
#     oauth_token_id     = data.tfe_oauth_client.samuellee-dev-tfc-github-client.oauth_token_id
#   }
# }
