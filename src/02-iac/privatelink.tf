# resource "azurerm_private_dns_zone" "example" {
#   name                = "privatelink.azurewebsites.net"
#   resource_group_name = azurerm_resource_group.RG.name
# }

# resource "azurerm_private_dns_zone_virtual_network_link" "example" {
#   name                  = "vnet-link"
#   resource_group_name   = azurerm_resource_group.RG.name
#   private_dns_zone_name = azurerm_private_dns_zone.example.name
#   virtual_network_id    = azurerm_virtual_network.vnet.id
# }

# resource "azurerm_private_endpoint" "example" {
#   name                = "example-endpoint"
#   location            = azurerm_resource_group.RG.location
#   resource_group_name = azurerm_resource_group.RG.name
#   subnet_id           = azurerm_subnet.epsubnet.id

#   private_service_connection {
#     name                           = "example-privateserviceconnection"
#     private_connection_resource_id = azurerm_logic_app_standard.example.id
#     is_manual_connection           = false
#     subresource_names              = ["sites"]
#   }
#   private_dns_zone_group {
#     name = "abc-pvtdns-poc"
#     private_dns_zone_ids = [azurerm_private_dns_zone.example.id]  
#   }
# }
