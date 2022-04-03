# resource "azurerm_resource_group" "RG1" {
#   name     = "rg-${local.prefix_lower}-mi-${var.environment}-02"
#   location = var.location
  
#   tags = {
#     environment = var.environment
#   }
# }

resource "azurerm_resource_group" "RG" {
  name     = "rg-${local.prefix_lower}-mi-${var.environment}-01"
  location = var.location
  
  tags = {
    environment = var.environment
  }
}
  