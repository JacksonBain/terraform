#
# AWS Backup vault
#
variable "name" {
  description = "Name of the backup vault to create."
  type        = string
  default     = "Standard"
}

variable "vault_kms_key_arn" {
  description = "The server-side encryption key that is used to protect your backups"
  type        = string
  default     = null
}

# Daily Backup rule
variable "rule_schedule" {
  description = "A CRON expression specifying when AWS Backup initiates a backup job"
  type        = string
  default     = "cron(0 5 * * ? *)"
}

variable "rule_start_window" {
  description = "The amount of time in minutes before beginning a backup"
  type        = number
  default     = 480
}

variable "rule_completion_window" {
  description = "The amount of time AWS Backup attempts a backup before canceling the job and returning an error"
  type        = number
  default     = 720
}

# Rule lifecycle
variable "rule_lifecycle_cold_storage_after" {
  description = "Specifies the number of days after creation that a recovery point is moved to cold storage"
  type        = number
  default     = null
}

variable "rule_lifecycle_delete_after" {
  description = "Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`"
  type        = number
  default     = 35
}
# Monthly Backup rule
variable "rule_schedule_monthly" {
  description = "A CRON expression specifying when AWS Backup initiates a backup job"
  type        = string
  default     = "cron(0 5 1 * ? *)"
}

variable "rule_start_window_monthly" {
  description = "The amount of time in minutes before beginning a backup"
  type        = number
  default     = 480
}

variable "rule_completion_window_monthly" {
  description = "The amount of time AWS Backup attempts a backup before canceling the job and returning an error"
  type        = number
  default     = 720
}

# Rule lifecycle
variable "rule_lifecycle_cold_storage_after_monthly" {
  description = "Specifies the number of days after creation that a recovery point is moved to cold storage"
  type        = number
  default     = 30
}

variable "rule_lifecycle_delete_after_monthly" {
  description = "Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than `cold_storage_after`"
  type        = number
  default     = 365
}

# Selection
variable "selection_resources" {
  description = "An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan"
  type        = list
  default     = []
}

variable "selection_tag_type" {
  description = "An operation, such as StringEquals, that is applied to a key-value pair used to filter resources in a selection"
  type        = string
  default     = "STRINGEQUALS"
}

variable "selection_tag_key" {
  description = "The key in a key-value pair"
  type        = string
  default     = "Backup"
}

variable "selection_tag_value" {
  description = "The value in a key-value pair"
  type        = string
  default     = "Yes"
}