 #resource "azurerm_public_ip" "appgwpub" {
 #  name                = "${var.prefix}-mi-appgwpub-ip-${var.environment}-01"
 #  resource_group_name = azurerm_resource_group.RG.name
 #  location            = azurerm_resource_group.RG.location
 #  allocation_method   = "Static"
 #  sku                 = "Standard"

 #  tags = {
 #    environment = var.environment
 #  }
  
 #}
 #since these variables are re-used - a locals block makes this more maintainable
 #locals {
 #  backend_address_pool_name      = "dbc-pi-vnet-shared-01-beap-prod"
 #  frontend_port_name             = "dbc-pi-vnet-shared-01-feport-prod"
 #  frontend_ip_configuration_name = "dbc-pi-vnet-shared-01-feip-prod"
 #  http_setting_name              = "dbc-pi-vnet-shared-01-be-htst-prod"
 #  listener_name                  = "dbc-pi-vnet-shared-01-httplstn-prod"
 #  request_routing_rule_name      = "dbc-pi-vnet-shared-01-rqrt-prod"
 #  redirect_configuration_name    = "dbc-pi-vnet-shared-01-rdrcfg-prod"
 #}
 #resource "azurerm_application_gateway" "appgw" {
 #  name                = "${var.prefix}-mi-appgateway-${var.environment}-01"
 # resource_group_name = azurerm_resource_group.RG.name
 #  location            = azurerm_resource_group.RG.location
    
 #  sku {
 #    name     = "WAF_v2"
 #    tier     = "WAF_v2"
 #  }

 #  autoscale_configuration {
 #   min_capacity = 2
 #   max_capacity = 15
 # }
   
 #  gateway_ip_configuration {
 #    name      = var.gateway_ipconfiguration_name
 #    subnet_id = azurerm_subnet.appgwsubnet.id
 #  }

 #  frontend_port {
 #    name = var.appgway-fpname
 #    port = 80
 #  }
 #  frontend_port {
 #    name = var.frontend_portname1
 #    port = 443
 #  }
 #  frontend_port {
 #    name = var.frontend_portname2
 #    port = 8080
 #  }
  
 #  frontend_ip_configuration {
 #    name                 = var.appgway-fename
 #    public_ip_address_id = azurerm_public_ip.appgwpub.id
 #  }

 #  backend_address_pool {
 #    name = var.appgway-bename
 #  }

 #  backend_http_settings {
 #    name                  = var.appgway-http
 #    cookie_based_affinity = "Disabled"
 #    port                  = 80
 #    protocol              = "Http"
 #    request_timeout       = 60
 #  }

 #  http_listener {
 #    name                           = var.appgway-list
 #    frontend_ip_configuration_name = var.appgway-fename
 #    frontend_port_name             = var.appgway-fpname
 #    protocol                       = "Http"
 #  }

 #  request_routing_rule {
 #    name                       = var.appgway-rqrt
 #    rule_type                  = "Basic"
 #    http_listener_name         = var.appgway-list
 #    backend_address_pool_name  = var.appgway-bename
 # #   backend_http_settings_name = var.appgway-http
    
  # }
  # waf_configuration {
  #   enabled                  = true
  #   firewall_mode            = "Prevention"
  #   rule_set_type            = "OWASP"
  #   rule_set_version         = "3.0"
  #   file_upload_limit_mb     = "100"
  #   max_request_body_size_kb = "128"
  # }

  # #depends_on = ["dbc-pi-vnet-shared-01", azurerm_public_ip.appgwpub]
   #lifecycle {
   #ignore_changes = [
   #  backend_address_pool,
   #  backend_http_settings,
   #  frontend_port,
   #  http_listener,
   #  probe,
   #  redirect_configuration,
   #  request_routing_rule,
   #  ssl_certificate,
   #  tags,
   #  url_path_map,
   #  trusted_root_certificate,
   #]
 #}

 #tags = {
 #    environment = var.environment
 #  }
 #}

 #resource "random_id" "log_analytics_workspace_name" {
 #    byte_length = 13
 #}

 #resource "azurerm_log_analytics_workspace" "logws" {
 #    name                = "${var.prefix}-mi-appgw-workspace-${var.environment}-01"
 #    location            = azurerm_resource_group.RG.location
 #    resource_group_name = azurerm_resource_group.RG.name
 #    sku                 = var.log_analytics_workspace_sku

 #    tags = {
 #    environment = var.environment
 #  }
 #}




