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
    key                     = "Fv23Sd3cuhx74/uQgIFINjaA6XyXluV1p++h0XYzt8pERa/yKbTjaX2R+4jtfxx89SO6vvNOHuW9+AStWlPYVg=="
  }
}
provider "azurerm" {
  features {}
}