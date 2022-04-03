resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-mi-vnet-01"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  address_space       = var.vnet_cidr_range

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "appgwsubnet" {
 name                 = "${var.prefix}-mi-appgwsubnet-shared-01"
 resource_group_name  = azurerm_resource_group.RG.name
 virtual_network_name = azurerm_virtual_network.vnet.name
 address_prefixes     = var.appgwsubnet
 enforce_private_link_endpoint_network_policies = true
 service_endpoints = ["Microsoft.KeyVault","Microsoft.Storage"]
 
}
resource "azurerm_subnet" "aksubnet" {
  name                 = "${var.prefix}-mi-aksubnet-shared-01"
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.aksubnet
  enforce_private_link_endpoint_network_policies = true
  service_endpoints = ["Microsoft.KeyVault","Microsoft.Storage"]

  delegation {
    name = "example-delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
  
}
 resource "azurerm_subnet" "epsubnet" {
  name                 = "${var.prefix}-mi-epsubnet-shared-01"
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["192.168.3.0/24"]
  enforce_private_link_endpoint_network_policies = true
 } 
 