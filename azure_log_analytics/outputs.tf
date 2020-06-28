output "log_analytics_worskspace_name" {
  value = azurerm_log_analytics_workspace.example.name
}

output "log_analytics_id" {
  value = azurerm_log_analytics_workspace.example.id
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.example.workspace_id
}

output "log_analytics_portal_url" {
  value = azurerm_log_analytics_workspace.example.portal_url
}

output "log_analytics_primary_shared_key" {
  value = azurerm_log_analytics_workspace.example.primary_shared_key
}

output "log_analytics_secondary_shared_key" {
  value = azurerm_log_analytics_workspace.example.secondary_shared_key
}