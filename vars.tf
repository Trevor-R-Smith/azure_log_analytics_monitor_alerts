
variable "subscription_id" {}

variable "resource_group_name" {
  type        = string
  description = ""
}

variable "resource_group_location" {
  type        = string
  description = ""
}

########################
# MONITOR ALERTS
######################

variable "action_group_name" {
  type = string
  description = ""
}

variable "action_group_email_address" {
  type        = string
  description = ""
}

variable "action_group_email_name" {
  type        = string
  description = ""
  default     = "Check Compliance Group"
}

variable "action_group_short_name" {
  type        = string
  description = ""
  default     = "Compliance"
}

variable "query_alert_name" {
  type        = string
  description = ""
  default     = "Check Non-Compliance Resources"
}

###################
# LOG ANALYTICS
###################

variable "log_analytics_name" {
  type        = string
  description = ""
  default     = "test-non-compliant-resources"
}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    Environment = "test"
    Owner       = "trsh"
    CreatedBy   = "terraform"

  }
}