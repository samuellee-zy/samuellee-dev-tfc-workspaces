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
