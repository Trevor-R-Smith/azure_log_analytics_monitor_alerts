#######################
# METRIC ALERT
######################

output "monitor_alert_name" {
  value = azurerm_monitor_scheduled_query_rules_alert.example.name
}

output "monitor_alert_id" {
  value = azurerm_monitor_scheduled_query_rules_alert.example.id
}

output "monitor_alert_data_source_id" {
  value = azurerm_monitor_scheduled_query_rules_alert.example.data_source_id
}

output "monitor_alert_query" {
  value = azurerm_monitor_scheduled_query_rules_alert.example.query
}
#######################
# ACTION GROUP OUTPUTS
#######################
output "action_group_name" {
  value = azurerm_monitor_action_group.example.name
}

output "action_group_id" {
  value = azurerm_monitor_action_group.example.id
}

output "action_group_email_reciever" {
  value = azurerm_monitor_action_group.example.email_receiver
}

output "action_group_short_name" {
  value = azurerm_monitor_action_group.example.short_name
}