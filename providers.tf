terraform {
  cloud {
    organization = "samuellee-dev"

    workspaces {
      name = "samuellee-dev-tfc-workspaces"
    }
  }
  required_providers {
    tfe = {
      version = ">= 0.38.0"
    }
  }
}

provider "tfe" {}