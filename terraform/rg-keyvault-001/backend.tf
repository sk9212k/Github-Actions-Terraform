terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name     = "rg-terraform-state-001"
    storage_account_name    = "zirconblue"
    container_name          = "tfstate"
    key                     = "OOn0WuGT+9/KH3+Ngu/7SQyWrTCdsjfYuOk51ACReGTZokvCGDSs7cKaKRnZ9im/LOy505kVkeNG+AStRycAdg=="
  }
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}