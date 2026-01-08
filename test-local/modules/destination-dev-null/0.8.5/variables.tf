variable "workspace_id" {
  description = "Airbyte workspace UUID"
  type        = string
}

variable "name" {
  description = "Human-readable name for this source"
  type        = string
}

variable "secret_id" {
  description = "Optional OAuth secret ID from the Airbyte API"
  type        = string
  default     = null
}

variable "test_destination_test_destination_type" {
  description = ""
  type        = string
  default     = "LOGGING"
}

variable "test_destination_logging_config" {
  description = "Configurate how the messages are logged."
  type        = map(any)
  default     = null
}

variable "test_destination_millis_per_record" {
  description = "The number of milliseconds to wait between each record."
  type        = number
  default     = null
}

variable "test_destination_num_messages" {
  description = "Number of messages after which to fail."
  type        = number
  default     = null
}

