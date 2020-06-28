resource "azurerm_monitor_scheduled_query_rules_alert" "example" {
  name                = var.query_alert_name
  location            = var.location
  resource_group_name = var.resource_group_name

  action {
    action_group           = [azurerm_monitor_action_group.example.id]
    email_subject          = var.email_subject
    custom_webhook_payload = file("${path.module}/json/custom_webhook_payload.json")
  }
  data_source_id = var.data_source_id
  description    = var.query_alert_description
  enabled        = var.enabled

  query       = <<-QUERY
  AzureActivity | where Category == 'Policy' and Level != 'Informational' | extend p=todynamic(Properties) | extend policies=todynamic(tostring(p.policies)) | mvexpand policy = policies | where p.isComplianceCheck == 'False'
  QUERY
  severity    = var.severity
  frequency   = var.frequency
  time_window = var.time_window
  trigger {
    operator  = var.operator
    threshold = var.threshold
  }
}