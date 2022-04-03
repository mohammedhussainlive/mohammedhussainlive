data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                = var.vaultname
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

  purge_protection_enabled = true
  network_acls {
    default_action     = "Deny"
    bypass             = "AzureServices"
    ip_rules           = ["49.204.183.81","52.140.3.193"] 
  }

}

