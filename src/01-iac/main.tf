locals {
  prefix_lower = upper("${var.prefix}")
  #project_lower = upper("${var.project}")
  environment_lower = upper("${var.environment}")
  }

data "azurerm_client_config" "config" {}
provider "azurerm" {
version = "=2.91.0"
features {}
}