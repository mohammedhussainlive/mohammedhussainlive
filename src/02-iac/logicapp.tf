
# locals {
#   private_link_configuration_name        = "private_link"
#   private_frontend_ip_configuration_name = "private"
# }


# resource "azurerm_storage_account" "strg" {
#   name                     = "funcapptestlsa"
#   resource_group_name      = azurerm_resource_group.RG.name
#   location                 = azurerm_resource_group.RG.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   min_tls_version          = "TLS1_2"
#   enable_https_traffic_only = true

#   queue_properties  {
#    logging {
#         delete                = true
#         read                  = true
#         write                 = true
#         version               = "1.0"
#         retention_policy_days = 10
#     }

#    hour_metrics {
#         enabled               = true
#         include_apis          = true
#         version               = "1.0"
#         retention_policy_days = 10
#     }
#    minute_metrics {
#         enabled               = true
#         include_apis          = true
#         version               = "1.0"
#         retention_policy_days = 10
#     } 
#   }

#   identity {
#      type = "SystemAssigned"
#    }
# }

# resource "azurerm_storage_account_customer_managed_key" "ok_cmk" {
#   storage_account_id = azurerm_storage_account.strg.id
#   key_vault_id       = azurerm_key_vault.example.id
#   key_name           = azurerm_key_vault_key.example.name
#   key_version        = "1"
# }

# resource "azurerm_app_service_plan" "example" {
#   name                = "azure-functions-test-service-plan"
#   location            = azurerm_resource_group.RG.location
#   resource_group_name = azurerm_resource_group.RG.name
#   kind                = "Linux"
#   reserved            = true

#   sku {
#     tier = "WorkflowStandard"
#     size = "WS1"
#   }

#   lifecycle {
#        ignore_changes = all
#      }
# }


# resource "azurerm_application_insights" "application_insights" {
#   name                = "${local.prefix_lower}-mi-la-appinsights-${local.environment_lower}-01"
#   location            = azurerm_resource_group.RG.location
#   resource_group_name = azurerm_resource_group.RG.name
#   application_type    = "Node.JS"

#   tags = {
#        environment = var.environment
#    }
# }

# resource "azurerm_logic_app_standard" "example" {
#   name                       = "abc-mi-la-e2e"
#   location                   = azurerm_resource_group.RG.location
#   resource_group_name        = azurerm_resource_group.RG.name
#   app_service_plan_id        = azurerm_app_service_plan.example.id
#   storage_account_name       = azurerm_storage_account.strg.name
#   storage_account_access_key = azurerm_storage_account.strg.primary_access_key
  
#   site_config {
#     linux_fx_version = "DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice"
#   }
  

# }
# resource "azurerm_app_service_virtual_network_swift_connection" "con1" {
#   app_service_id = azurerm_logic_app_standard.example.id
#   subnet_id      = azurerm_subnet.aksubnet.id
# }

# resource "azurerm_log_analytics_workspace" "funcapp" {
#     name                = "${var.prefix}-mi-la-workspace-${local.environment_lower}-01"
#     location            = azurerm_resource_group.RG.location
#     resource_group_name = azurerm_resource_group.RG.name
#     sku                 = var.log_analytics_workspace_sku

#     tags = {
#        environment = var.environment
#    }
# }


