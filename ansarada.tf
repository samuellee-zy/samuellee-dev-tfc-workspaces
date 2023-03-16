
# resource "tfe_oauth_client" "samuelleezy" {
#   name             = "samuelleezy-oauth-client"
#   organization     = var.orgName
#   api_url          = "https://api.github.com"
#   http_url         = "https://github.com"
#   oauth_token      = var.GITHUB_TOKEN
#   service_provider = "github"
# }

resource "tfe_workspace" "ansarada-ws" {
  name                = "ansarada-ecs-demo"
  organization        = data.tfe_outputs.samuellee-dev-project-outputs.values.project_hcp_boundary.organization
  tag_names           = ["aws", "customer"]
  description         = "Ansarada Demo ECS Deployment"
  execution_mode      = "remote"
  assessments_enabled = true
  project_id          = data.tfe_outputs.samuellee-dev-project-outputs.values.project_customer_demos.id
  vcs_repo {
    identifier         = "samuellee-zy/customer-ansarada"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.samuellee-dev-tfc-github-client.oauth_token_id
  }
}