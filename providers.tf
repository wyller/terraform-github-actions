terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "student-storage-rg"
    storage_account_name = "studentstorage777'"
    container_name       = "terraform-states"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = var.az_subscription_id
  tenant_id       = var.az_tenant_id
  client_id       = var.az_client_id
  client_secret   = var.az_client_secret
}
