
module "monitor_alerts_log_analytics" {
  source = "./azure_monitor"

  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name

  action_group_email_address = var.action_group_email_address
  action_group_email_name    = var.action_group_email_name
  action_group_name          = var.action_group_name
  action_group_short_name    = var.action_group_short_name

  data_source_id             = module.log_analytics_workspace.log_analytics_id
  query_alert_name           = var.query_alert_name

  tags                       = var.tags
}

module "log_analytics_workspace" {
  source = "./azure_log_analytics"

  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  log_analytics_name  = var.log_analytics_name

  tags                = var.tags
}