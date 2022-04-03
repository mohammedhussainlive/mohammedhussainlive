
##########################Resource Group#################################
prefix              = "abc"
environment         = "uat"
location            = "australiaeast"
#########################################################################

#######################Virtual Network###################################
vnet_cidr_range     = ["192.168.0.0/16"]
appgwsubnet         = ["192.168.0.0/24"]
aksubnet            = ["192.168.1.0/24"]
natgwsubnet         = ["192.168.3.0/24"]

########################################################################

#########################azure container registry########################

acr_name            = "abcmiacr01"
acr-sku             = "Basic"
admin_enabled       = true
#########################################################################

################################AKS Cluster##############################

admin_username       = "azureuser"
admin_password       = "TK2I1XKIVX1E9sjkI"
kubernetes_version   = "1.20.5"
cluster_name         = "dbc-aks-test-01"
nodepoolname         = "nodepool1"
system_node_count    = 1
#aks-vm_size         = "Standard_D2s_v3"
node_pool_max_pods   = 60
orchestrator_version = "1.20.5"
os_disk_size         = "30"
network_plugin       = "azure"
network_policy       = "azure"
docker_bridge_cidr   = "172.17.0.1/16"
dns_service_ip       = "10.0.0.10"
service_cidr         = "10.0.0.0/16"
load_balancer_sku    = "Standard"


#########################################################################

############################## APIM #####################################

apim_name      = "dbcpiapim01"
publisher_name = "DBC"
email          = "yakoob.ali@softobiz.com"
apim_sku       = "Developer_1"

#########################################################################

#########################Application Gateway#############################

appgw-pub_ip_sku              = "standard"
gateway_ipconfiguration_name  = "my-gateway-ip-configuration"
appgway-fpname                = "dbc-fp-name" 
frontend_portname1            = "httpsPort"
frontend_portname2            = "httpPort"
appgway-bename                = "dbcbackend"
appgway-http                  = "dbc-http"
appgway-list                  = "dbc-httplistner"
appgway-fename                = "dbc-feip"
log_analytics_workspace_sku   = "PerGB2018"
appgway-rqrt                  = "dbc-rrule"

#########################################################################

#############################Function App################################


funapp_replicationtype01     = "LRS"
funapp_strg01                = "abcmistrgfappuat001"
allocation_method01          = "Static"
pubipsku01                   = "Standard"
natgwsku01                   = "Standard"
funapp_asp_tier01            = "Standard"
funapp_strgtier01            = "Standard"
#########################################################################

#################################Key Vault ##############################

keyvault_sku           = "standard"
vaultname              = "abc-mi-kv-uat-01"
#########################################################################

###############################PostGRE SQL###############################

postgresqluser             = "Administrators"
postgresqlpassword         = "Admin@123456"
postgresql_sku             = "GP_Gen5_4"
postgresql_version         = "11"
postgresql_storage_mb      = "5120"
firewallrulename           = "allow_all_ips"

#########################################################################

##########################Azure Service Bus #############################
asb_sku                   = "Standard"
nametopic1                = "listing"
nametopic2                = "office"
nametopic3                = "staff"
nametopic4                = "team"
nametopic5                = "dbc-services"
nametopic6                = "milestone-create"
sb_subscriber             = "logic-app-subscriber"
tar                       = "write"
asb_max_delivery_count    = "2"
topicsize                 = "5120"
msg_ttl                   = "P100DT12H"
max_lock_dur              = "PT3M"
######################################################################### 
######################swagger api blog storage###########################

storage_account                               = "dbcpibs01"
swagger_blog_storage_account_tier             = "Standard"
swagger_blog_storage_account_replication_type = "LRS"
swagger_blog_storage_account_kind             = "StorageV2"

#########################################################################