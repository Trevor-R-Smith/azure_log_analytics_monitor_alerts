
output "monitor_name" {
  value = module.monitor_alerts_log_analytics.monitor_alert_name
}

output "monitor_email_reciever" {
  value = module.monitor_alerts_log_analytics.action_group_email_reciever
}

output "log_analytics_workspace_name" {
  value = module.log_analytics_workspace.log_analytics_worskspace_name
}

output "log_analytics_workspace_portal_url" {
  value = module.log_analytics_workspace.log_analytics_portal_url
}

output "log_analytics_workspace_key" {
  value = module.log_analytics_workspace.log_analytics_primary_shared_key
}