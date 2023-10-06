terraform {
  cloud {
    organization = "samuellee-dev"

    workspaces {
      name = "serviceNow"
    }
  }
  required_providers {
    tfe = {
      version = ">= 0.38.0"
    }
  }
}

provider "tfe" {}
