##########################Resource Group#################################
variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type        = string
  description = "Resources location in Azure"
}
#########################################################################

#######################Virtual Network###################################
variable "vnet_cidr_range" {
  type = list(string)
}

variable "aksubnet" {
  type = list(string)
}

variable "appgwsubnet" {
  type = list(string)
}

variable "natgwsubnet" {
  type = list(string)
}
########################################################################


############################swager api blog storage######################
variable "swagger_blog_storage_account_tier" {
  type        = string
  description = "Resources swager api storage account_tier in Azure"
}

variable "swagger_blog_storage_account_replication_type" {
  type        = string
  description = "Resources swager api storage account account_replication_type in Azure"
}
variable "swagger_blog_storage_account_kind" {
  type        = string
  description = "Resources swagger api storage account account_kind  in Azure"
}

variable "storage_account" {
  type        = string
  description = "Storage Account Name"
}

#########################################################################

#########################azure container registry########################

variable "acr_name" {
  type        = string
  description = "ACR name"
}

variable "acr-sku" {
  description = "The SKU name of the container registry"
  default     = "Basic"
}

variable "admin_enabled" {
  type = string
}

#########################################################################

###########################AKS Cluster ##################################
variable "admin_username" {
  type        = string
  
}

variable "admin_password" {
  type        = string
  
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "nodepoolname" {
  type        = string
  description = "AKS Nodepool Name"
}

variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}

# variable "aks-vm_size" {
#   type        = string
#   description = "AKS VM size"
# }

variable "node_pool_max_pods" {
  description = " The maximum number of pods that can run on each agent. Changing this forces a new resource to be created"
  type        = number
}

variable "orchestrator_version" {
  type        = string
  description = "orchestrator_version"
}

variable "os_disk_size" {
  type        = number
  description = "OS disk size"
}

variable "network_plugin" {
  description = "Kubernetes networking plugin"
  default     = "azure"
}

variable "network_policy" {
  description = "Kubernetes policy plugin"
  default     = "azure"
}

variable "docker_bridge_cidr" {
  description = "Docker bridge CIDR"
  default     = "172.17.0.1/16"
}

variable "dns_service_ip" {
  description = "DNS Service IP"
  default     = "10.0.0.10"
}

variable "service_cidr" {
  description = "Service CIDR"
  default     = "10.0.0.0/16"
}

variable "load_balancer_sku" {
  description = "Load Balancer SKU"
  default     = "Standard"
}



#########################################################################

################################# APIM ##################################

variable "apim_name" {
  description = "name of the APIM"
  type        = string
}

variable "publisher_name" {
  description = "name of the Publisher"
  type        = string
}

variable "email" {
  description = "email id of Admin"
  type        = string
}

variable "apim_sku" {
  description = "SKU for apim"
  type        = string
}
#########################################################################

############################Application Gateway##########################

# variable "appgw-pub_ip_sku" {
#   description = "SKU for App gateway Public Ip"
#   type        = string
# }

variable "gateway_ipconfiguration_name" {
  description = "ip configuration name"
  type        = string
}

variable "appgway-fpname" {
  description = "To name the FE portname"
  type        = string
  #default     = {}
}

variable "frontend_portname1" {
  description = "port name"
  type        = string
}

variable "frontend_portname2" {
  description = "port name"
  type        = string
}

variable "appgway-bename" {
  description = "To name the BE"
  type        = string
  
}

variable "appgway-http" {
  description = "To name the http"
  type        = string
  
}

variable "appgway-list" {
  description = "To name the listner"
  type        = string
  
}

variable "appgway-fename" {
  description = "To name the FE"
  type        = string
  
}

variable "log_analytics_workspace_sku" {
    type = string
}

variable "appgway-rqrt" {
   description = "To name the Rule"
   type        = string
  
 }

#########################################################################

##############################Function App###############################


variable "funapp_replicationtype01" {
  description = "Storage account replication type"
  type        = string
  
}

variable "funapp_strg01" {
  description = "Storage account name associated to function app"
  type        = string
  
}


variable "allocation_method01" {
  description = "Function App allocation method"
  type        = string
  
}

variable "pubipsku01" {
  description = "Public Ip SKU"
  type        = string
  
}

variable "natgwsku01" {
  description = "Nat gateway SKU"
  type        = string
  
}

variable "funapp_asp_tier01" {
  description = "Function App, App Service Plan Tier"
  type        = string
  
}

variable "funapp_strgtier01" {
  description = "Storage account tier for function app"
  type        = string
  
}


#########################################################################

#################################Key Vault###############################

variable "keyvault_sku" {
  description = "SKU for key vault"
  type        = string
  
}

variable "vaultname" {
  description = "this is key vault name"
  type        = string
}
#########################################################################

###############################PostGRE SQL###############################

variable "postgresqluser" {
  description = "postgresql username"
  type        = string
}

variable "postgresqlpassword" {
  description = "postgresql password"
  type        = string
}

variable "postgresql_sku" {
  description = "postgresql sku"
  type        = string
}

variable "postgresql_version" {
  description = "postgresql version"
  type        = number
}

variable "postgresql_storage_mb" {
  description = "postgresql storage size"
  type        = number
}

variable "firewallrulename" {
  description = "name for the firewall"
  type        = string
}
#########################################################################

#########################Azure Service Bus###############################
variable "asb_sku" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "nametopic1" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "nametopic2" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "nametopic3" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "nametopic4" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "nametopic5" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "nametopic6" {
  description = "Azure Service Bus sku"
  type        = string
}

variable "sb_subscriber" {
  description = "name of the subscriber in servicebus"
  type        = string
}
variable "tar" {
  description = "name of the topic authorization rule"
  type        = string
}

variable "asb_max_delivery_count" {
  description = "maximum delivery count"
  type        = number
}

variable "topicsize" {
  description = "topic size"
  type        = number
}

variable "msg_ttl" {
  description = "maximum time to live"
  type        = string
}

variable "max_lock_dur" {
  description = "maximum lock duration"
  type        = string
}
#########################################################################



