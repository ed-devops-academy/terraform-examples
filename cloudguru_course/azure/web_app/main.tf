# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_service_plan" "svcplan" {
  name                = "newweb-appserviceplan"
  location            = var.azurerm_location
  resource_group_name = var.azurerm_resource_group_name
  os_type             = "Windows"
  sku_name            = "S1"
}

resource "azurerm_windows_web_app" "appsvc" {
  name                = "custom-tf-webapp-for-musala-azdevops-academy"
  location            = azurerm_service_plan.svcplan.location
  resource_group_name = azurerm_service_plan.svcplan.resource_group_name
  service_plan_id = azurerm_service_plan.svcplan.id


  site_config {}
}
