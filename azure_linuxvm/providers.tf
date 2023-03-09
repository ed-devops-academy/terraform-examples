terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "1-73be3bb6-playground-sandbox"
    storage_account_name = "mytfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
