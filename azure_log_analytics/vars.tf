variable "log_analytics_name" {
  type = string
  description = "Specifies the name of the Log Analytics Workspace"
}

variable "location" {
  type  = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which the Log Analytics workspace is created"

}

variable "log_analytics_sku" {
  type = string
  description = "Specifies the Sku of the Log Analytics Workspace"
  default = "Free"
}

variable "log_analytics_rentention_in_days" {
  type = number
  description = "The workspace data retention in days"
  default = 7
}

variable "tags" {
  type = map(string)
  description = ""
}
