terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.79.0"
    }
  }

 backend "azurerm" {
  resource_group_name  = "sit"
  storage_account_name = "sitterraformstate2026"
  container_name       = "tfstate"
  key                  = "sit.terraform.tfstate"
}
}
provider "azurerm" {
  features {}
  subscription_id = "5ef4ee5d-6bd4-4c27-acc2-af8816fed413"
}
