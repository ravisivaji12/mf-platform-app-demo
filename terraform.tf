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
  token = var.github_token != "" ? var.github_token : getenv("GITHUB_TOKEN")
  owner = "McCainFoods"
}

provider "tfe" {
  token        = var.tfe_token
  organization = "Mccain_Foods"
}
provider "azurerm" {
  features {}
  subscription_id            = "bbca0db0-25fe-49b8-a089-49933a07c849"
  #skip_provider_registration = true
}