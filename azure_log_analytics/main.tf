resource "azurerm_log_analytics_workspace" "example" {
  name                = var.log_analytics_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.log_analytics_sku
  retention_in_days   = var.log_analytics_rentention_in_days

  tags = var.tags
}