resource "tfe_workspace" "application_a_security" {
  name         = "Application_A_Security"
  organization = var.orgName
  tag_names    = ["application_a_security"]
  project_id   = data.tfe_outputs.outputs.values.Project_A_Id
}

resource "tfe_workspace" "application_a_vnet" {
  name         = "Application_A_VNET"
  organization = var.orgName
  tag_names    = ["application_a_vnet"]
  project_id   = data.tfe_outputs.outputs.values.Project_A_Id
}

resource "tfe_workspace" "application_a_web" {
  name         = "Application_A_Web"
  organization = var.orgName
  tag_names    = ["application_a_web"]
  project_id   = data.tfe_outputs.outputs.values.Project_A_Id
}