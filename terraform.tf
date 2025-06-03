terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.50.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.34.1"
    }
  }
  # required_version = ">= 1.1.0"
}
provider "github" {
  token = "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" # var.github_token != "" ? var.github_token : getenv("GITHUB_TOKEN")
  owner = "ravisivaji12"
}

provider "tfe" {
  token        = var.tfe_token
  organization = "SivajiRaavi"
}
provider "azurerm" {
  features {}
  subscription_id = "abd34832-7708-43f9-a480-e3b7a87b41d7"
  #skip_provider_registration = true
}