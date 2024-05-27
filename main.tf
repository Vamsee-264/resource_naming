
locals {

  resource_name_map = {
    #global settings
    delimiter    = "${local.delimiter}"
    suffix      = "${local.suffix}"
    cloudprefix  = "${var.global_settings.naming.cloudprefix}"
    envlabel     = "${var.global_settings.naming.envlabel}"
    locationcode = "${var.global_settings.naming.locationcode}"

    #global settings resource group labels
    rgName   = "${try(var.settings.name, "")}"
    rgSuffix = "${var.global_settings.naming.rgsuffix}"
    rg1Suffix = "${var.global_settings.naming.rg1suffix}"

    #global settings resource labels
    aadds                                  = lookup(var.global_settings.naming.resourcelabels, "aadds", "AADDS")
    ade                                    = lookup(var.global_settings.naming.resourcelabels, "ade", "ADE")
    aks                                    = lookup(var.global_settings.naming.resourcelabels, "aks", "AKS")
    api_mgmt                               = lookup(var.global_settings.naming.resourcelabels, "api_mgmt", "APIM")
    app_config                             = lookup(var.global_settings.naming.resourcelabels, "app_config", "APPCS")
    app_insights                           = lookup(var.global_settings.naming.resourcelabels, "app_insights", "APPI")
    app_service_plan                       = lookup(var.global_settings.naming.resourcelabels, "app_service_plan", "PLAN")
    app_service_env                        = lookup(var.global_settings.naming.resourcelabels, "app_service_env", "ASE")
    asg                                    = lookup(var.global_settings.naming.resourcelabels, "asg", "ASG")
    automationacct                         = lookup(var.global_settings.naming.resourcelabels, "automationacct", "AA")
    avd                                    = lookup(var.global_settings.naming.resourcelabels, "avd", "AVD")
    avset                                  = lookup(var.global_settings.naming.resourcelabels, "avset", "AS")
    azfirewall                             = lookup(var.global_settings.naming.resourcelabels, "azfirewall", "AZFW")
    azfirewallpolicy                       = lookup(var.global_settings.naming.resourcelabels, "azfirewallpolicy", "AZFW-POLICY")
    azfirewallpolicyrcg                    = lookup(var.global_settings.naming.resourcelabels, "azfirewallpolicyrcg", "AZFW-POLICY-RCG")
    azfirewallpolicynetrule                = lookup(var.global_settings.naming.resourcelabels, "azfirewallpolicynetrule", "NETWORK-RC")
    azfirewallpolicyapprule                = lookup(var.global_settings.naming.resourcelabels, "azfirewallpolicyapprule", "APPLICATION-RC")
    azfirewallpolicynatrule                = lookup(var.global_settings.naming.resourcelabels, "azfirewallpolicynatrule", "DNAT-RC")
    bastion                                = lookup(var.global_settings.naming.resourcelabels, "bastion", "BAS")
    con_budget_mgmtgroup                   = lookup(var.global_settings.naming.resourcelabels, "con_budget_mgmtgroup", "CONSUMPTION-BUDGET-MGMTGRP")
    con_budget_rg                          = lookup(var.global_settings.naming.resourcelabels, "con_budget_rg", "CONSUMPTION-BUDGET-RG")
    con_budget_sub                         = lookup(var.global_settings.naming.resourcelabels, "con_budget_sub", "CONSUMPTION-BUDGET-SUB")
    data_factory                           = lookup(var.global_settings.naming.resourcelabels, "data_factory", "ADF")
    data_factory_integration_runtime_azure = lookup(var.global_settings.naming.resourcelabels, "data_factory_integration_runtime_azure", "ADFIRAZ")
    data_factory_managed_private_endpoint  = lookup(var.global_settings.naming.resourcelabels, "data_factory_managed_private_endpoint", "ADFMPE")
    databricks_access_connector            = lookup(var.global_settings.naming.resourcelabels, "databrick_access_connector", "DBAC")
    databricks_vnet_peering                = lookup(var.global_settings.naming.resourcelabels, "databricks_vnet_peering", "DBVNP")
    databricks_workspace                   = lookup(var.global_settings.naming.resourcelabels, "databrick_workspace", "DBW")
    datadisk                               = lookup(var.global_settings.naming.resourcelabels, "datadisk", "DataDisk")
    ddos_protection_plan                   = lookup(var.global_settings.naming.resourcelabels, "ddos_protection_plan", "DDOS-PLAN")
    dnszonevnetlink                        = lookup(var.global_settings.naming.resourcelabels, "dnszonevnetlink", "DNSZONEVNETLNK")
    erg                                    = lookup(var.global_settings.naming.resourcelabels, "erg", "ERG")
    eventhub                               = lookup(var.global_settings.naming.resourcelabels, "eventhub", "EVH")
    eventhub_auth_rule                     = lookup(var.global_settings.naming.resourcelabels, "eventhub_auth_rule", "EVHAR")
    eventhub_cluster                       = lookup(var.global_settings.naming.resourcelabels, "eventhub_cluster", "EVHC")
    eventhub_consumer_group                = lookup(var.global_settings.naming.resourcelabels, "eventhub_consumer_group", "EVHCG")
    eventhub_namespace                     = lookup(var.global_settings.naming.resourcelabels, "eventhub_namespace", "EVHNS")
    eventhub_namespace_auth_rule           = lookup(var.global_settings.naming.resourcelabels, "eventhub_namespace_auth_rule", "EVHNSAR")
    eventhub_namespace_dis_rec_con         = lookup(var.global_settings.naming.resourcelabels, "eventhub_namespace_dis_rec_con", "EVHNSDRC")
    eventhub_namespace_schema_group        = lookup(var.global_settings.naming.resourcelabels, "eventhub_namespace_schema_group", "EVHNSSG")
    expressrouteport                       = lookup(var.global_settings.naming.resourcelabels, "expressrouteport", "ERP")
    expressroutecircuit                    = lookup(var.global_settings.naming.resourcelabels, "expressroutecircuit", "ERC")
    expressroutecircuitpeering             = lookup(var.global_settings.naming.resourcelabels, "expressroutecircuitpeering", "ERCP")
    expressroutecircuitauth                = lookup(var.global_settings.naming.resourcelabels, "expressroutecircuitauth", "ERCA")
    expressroutecircuitconn                = lookup(var.global_settings.naming.resourcelabels, "expressroutecircuitconn", "ERCConn")
    expressrouteconnection                 = lookup(var.global_settings.naming.resourcelabels, "expressrouteconnection", "ERConn")
    function_app                           = lookup(var.global_settings.naming.resourcelabels, "function_app", "FUNC")
    ipgroup                                = lookup(var.global_settings.naming.resourcelabels, "ipgroup", "IPGRP")
    keyvault                               = lookup(var.global_settings.naming.resourcelabels, "keyvault", "KV")
    lb                                     = lookup(var.global_settings.naming.resourcelabels, "lb", "LB")
    lbprobe                                = lookup(var.global_settings.naming.resourcelabels, "lbprobe", "LBPROBE")
    lbrule                                 = lookup(var.global_settings.naming.resourcelabels, "lbrule", "LBRULE")
    lng                                    = lookup(var.global_settings.naming.resourcelabels, "lng", "LNG")
    lock                                   = lookup(var.global_settings.naming.resourcelabels, "lock", "LOCK")
    log_analytics                          = lookup(var.global_settings.naming.resourcelabels, "log_analytics", "LA")
    log_analytics_data_export_rule         = lookup(var.global_settings.naming.resourcelabels, "log_analytics_data_export_rule", "LADER")
    log_analytics_storage_insights         = lookup(var.global_settings.naming.resourcelabels, "log_analytics_storage_insights", "LASAINS")
    logic_app                              = lookup(var.global_settings.naming.resourcelabels, "logic_app", "LOGIC")
    mlci                                   = lookup(var.global_settings.naming.resourcelabels, "mlci", "MLCI")
    mlwksp                                 = lookup(var.global_settings.naming.resourcelabels, "mlwksp", "MLW")
    monitor_action_group                   = lookup(var.global_settings.naming.resourcelabels, "monitor_action_group", "AG")
    monitor_activity_log_alert             = lookup(var.global_settings.naming.resourcelabels, "monitor_activity_log_alert", "ALA")
    monitor_alert_proc_rule_act_grp        = lookup(var.global_settings.naming.resourcelabels, "monitor_alert_proc_rule_act_grp", "APRAG")
    monitor_alert_proc_rule_supp           = lookup(var.global_settings.naming.resourcelabels, "monitor_alert_proc_rule_supp", "APRS")
    monitor_alert_prom_rule_grp            = lookup(var.global_settings.naming.resourcelabels, "monitor_alert_prom_rule_grp", "APRG")
    monitor_autoscale_setting              = lookup(var.global_settings.naming.resourcelabels, "monitor_autoscale_setting", "ASSETTING")
    monitor_data_coll_endpt                = lookup(var.global_settings.naming.resourcelabels, "monitor_data_coll_endpt", "DATACOLLENDPNT")
    monitor_data_coll_rule                 = lookup(var.global_settings.naming.resourcelabels, "monitor_data_coll_rule", "DATACOLLRULE")
    monitor_data_coll_rule_assoc           = lookup(var.global_settings.naming.resourcelabels, "monitor_data_coll_rule_assoc", "DATACOLLRULEASSOC")
    monitor_metric_alert                   = lookup(var.global_settings.naming.resourcelabels, "monitor_metric_alert", "MA")
    monitor_workspace                      = lookup(var.global_settings.naming.resourcelabels, "monitor_workspace", "MONWKS")
    mpls                                   = lookup(var.global_settings.naming.resourcelabels, "mpls", "MPLS")
    mplss                                  = lookup(var.global_settings.naming.resourcelabels, "mplss", "MPLSService")
    mssql_mi                               = lookup(var.global_settings.naming.resourcelabels, "mssql_mi", "SQLMI")
    mssql_server                           = lookup(var.global_settings.naming.resourcelabels, "mssql_server", "SQL")
    mssql_server_elastic_pool              = lookup(var.global_settings.naming.resourcelabels, "mssql_server_elastic_pool", "SQLElasticPool")
    nat_gateway                            = lookup(var.global_settings.naming.resourcelabels, "nat_gateway", "NG")
    netapp_account                         = lookup(var.global_settings.naming.resourcelabels, "netapp_account", "NETAPPACCT")
    netapp_pool                            = lookup(var.global_settings.naming.resourcelabels, "netapp_pool", "NETAPPPOOL")
    netapp_snapshot                        = lookup(var.global_settings.naming.resourcelabels, "netapp_snapshot", "NETAPPSNAPSHOT")
    netapp_snapshot_policy                 = lookup(var.global_settings.naming.resourcelabels, "netapp_snapshot_policy", "NETAPPSNAPSHOTPOL")
    netapp_volume                          = lookup(var.global_settings.naming.resourcelabels, "netapp_volume", "NETAPPVOLUME")
    networkwatcher                         = lookup(var.global_settings.naming.resourcelabels, "networkwatcher", "NetworkWatcher")
    nic                                    = lookup(var.global_settings.naming.resourcelabels, "nic", "NIC")
    nsg                                    = lookup(var.global_settings.naming.resourcelabels, "nsg", "NSG")
    nsgflowlogs                            = lookup(var.global_settings.naming.resourcelabels, "nsgflowlogs", "NSGFlowLog")
    osdisk                                 = lookup(var.global_settings.naming.resourcelabels, "osdisk", "OSDisk")
    p2svpn                                 = lookup(var.global_settings.naming.resourcelabels, "p2svpn", "P2SVPN")
    private_dns_resolver                   = lookup(var.global_settings.naming.resourcelabels, "private_dns_resolver", "DNSPR")
    privateendpoint                        = lookup(var.global_settings.naming.resourcelabels, "privateendpoint", "PRVENDPNT")
    publicip                               = lookup(var.global_settings.naming.resourcelabels, "publicip", "PIP")
    publicip_prefix                        = lookup(var.global_settings.naming.resourcelabels, "publicip_prefix", "PRFX")
    purview_account                        = lookup(var.global_settings.naming.resourcelabels, "purview_account", "PVIEW")
    routefilter                            = lookup(var.global_settings.naming.resourcelabels, "routefilter", "RF")
    route_server                           = lookup(var.global_settings.naming.resourcelabels, "route_server", "RS")
    routetable                             = lookup(var.global_settings.naming.resourcelabels, "routetable", "RT")
    rsv                                    = lookup(var.global_settings.naming.resourcelabels, "rsv", "RSV")
    sbus_ns                                = lookup(var.global_settings.naming.resourcelabels, "sbus_ns", "SB")
    sbus_ns_auth_rule                      = lookup(var.global_settings.naming.resourcelabels, "sbus_ns_auth_rule", "SBAuthRule")
    subnet                                 = lookup(var.global_settings.naming.resourcelabels, "subnet", "SNET")
    vhub                                   = lookup(var.global_settings.naming.resourcelabels, "vhub", "VHUB")
    vmss                                   = lookup(var.global_settings.naming.resourcelabels, "vmss", "VMSS")
    vnet                                   = lookup(var.global_settings.naming.resourcelabels, "vnet", "VNET")
    vng                                    = lookup(var.global_settings.naming.resourcelabels, "vng", "VNG")
    vngc                                   = lookup(var.global_settings.naming.resourcelabels, "vngc", "VNGConn")
    vpng                                   = lookup(var.global_settings.naming.resourcelabels, "vpng", "VPNG")
    vwan                                   = lookup(var.global_settings.naming.resourcelabels, "vwan", "VWAN")

    #resource specific settings    
    name               = "${var.name == null ? try(var.settings.name, "") : var.name}"
    vmnameprefix       = "${var.global_settings.naming.vmnameprefix}"
    referenced_name    = "${try(var.referenced_name, "")}"
    referenced_name_1  = "${try(var.referenced_name_1, "")}"
    object_name_prefix = "${try(var.object_name_prefix, "")}"
    object_count       = "${try(var.object_count, "")}"

    vnet_address_space    = can(var.settings.address_space[0]) ? replace("${try(var.settings.address_space[0], "")}", "/", "_") : ""
    snet_address_prefixes = can(var.settings.address_prefixes[0]) ? replace("${try(var.settings.address_prefixes[0], "")}", "/", "_") : ""
  }

  # naming_convention = {
  #   delimiter = lookup(try(var.settings.naming_convention, {}), "delimiter", null) == null ? try(var.global_settings.naming_convention.delimiter, local.delimiter_default) : var.settings.naming_convention.delimiter}
  #   suffix = 
  #   force_lowercase = 
  #   force_uppercase = 
  # }

  #This is a last resort failsafe delimiter
  delimiter_default = "-"

  delimiter = lookup(try(var.settings.naming_convention, {}), "delimiter", null) == null ? lookup(try(var.global_settings.naming.naming_convention, {}), "delimiter", local.delimiter_default) : lookup(try(var.settings.naming_convention, {}), "delimiter", local.delimiter_default)

  suffix = lookup(try(var.settings.naming_convention, {}), "suffix", null) == null && length(regexall("{suffix}", var.name_mask)) > 0 ? tostring(random_integer.default_postfix[0].result) : lookup(try(var.settings.naming_convention, {}), "suffix", null)

  #something to stew on if we ever want to look into a counter
  #suffix = try(var.settings.vnet.naming_convention.suffix, format("%00d", var.index + 1))

  #This bad boy holds the semi-final result exluding the forced upper/lowercase
  name_result_temp = replace(format(
    replace(var.name_mask, "/{(${join("|", keys(local.resource_name_map))})}/", "%s"),
    [
      for value in flatten(regexall("{(${join("|", keys(local.resource_name_map))})}", var.name_mask)) :
      lookup(local.resource_name_map, value)
    ]...
  ), "/", "_")

  name_result = lookup(try(var.global_settings.naming.naming_convention, {}), "force_lowercase", false) == true || lookup(try(var.settings.naming_convention, {}), "force_lowercase", false) == true ? lower(local.name_result_temp) : lookup(try(var.global_settings.naming.naming_convention, {}), "force_uppercase", false) == true || lookup(try(var.settings.naming_convention, {}), "force_uppercase", false) == true ? upper(local.name_result_temp) : local.name_result_temp


}

resource "random_integer" "default_postfix" {
  min   = 1
  max   = 100
  count = lookup(try(var.settings.naming_convention, {}), "suffix", null) == null && length(regexall("{suffix}", var.name_mask)) > 0 ? 1 : 0

  # keepers (Map of String) Arbitrary map of values that, when changed, will trigger recreation of resource
  # keepers = {
  #   # Generate a new integer each time we switch to a new virtual_machine
  #   virtual_machine = "${var.virtual_machine}"
  # }
}
