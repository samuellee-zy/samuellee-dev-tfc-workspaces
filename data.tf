data "tfe_outputs" "samuellee-dev-project-outputs" {
  workspace    = var.samuelleeOrgProject
  organization = var.orgName
}

data "tfe_outputs" "samuellee-dev-tfc-dynamic-creds-varset-outputs" {
  workspace    = var.samuellee-dev-dynamic-creds-varset-ws
  organization = var.orgName
}

data "tfe_oauth_client" "samuellee-dev-tfc-github-client" {
  organization = var.orgName
  name         = "samuellee-zy-github-oauth"
}

data "tfe_variable_set" "hcp-org-client-id-client-secret" {
  name         = "samuellee-dev HCP Client ID and Client Secret"
  organization = var.orgName
}

data "tfe_organization_run_task" "infracost" {
  name         = "Infracost"
  organization = var.orgName
}

data "tfe_policy_set" "infracost" {
  name = "sentinel-infracost-module"
  organization = var.orgName
}