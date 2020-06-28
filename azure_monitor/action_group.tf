
resource "azurerm_monitor_action_group" "example" {
  name = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name = var.action_group_short_name

  email_receiver {
    name                    = var.action_group_email_name
    email_address           = var.action_group_email_address
    use_common_alert_schema = var.common_alert_schema
  }

tags = var.tags

}