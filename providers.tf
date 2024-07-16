terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-backend-puc"
    storage_account_name = "student-rg"
    container_name       = "terraform-states"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}
