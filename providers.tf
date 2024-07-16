terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "student-rg"
    storage_account_name = "studentrg'"
    container_name       = "terraform-states"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}
