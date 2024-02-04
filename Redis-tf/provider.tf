provider "azurerm" {
  features {}
  skip_provider_registration = "true"
  subscription_id            = ""
}

provider "kubernetes" {
  config_path    = ""
  config_context = ""
}

provider "helm" {
  kubernetes {
    config_path    = ""
    config_context = ""
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}