terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = ">= 1.0.0"
    }
  }
}

provider "airbyte" {
  client_id     = var.airbyte_client_id
  client_secret = var.airbyte_client_secret
}

variable "airbyte_client_id" {
  description = "The Airbyte Client ID for OAuth authentication."
  sensitive   = true
  type        = string
}

variable "airbyte_client_secret" {
  description = "The Airbyte Client Secret for OAuth authentication."
  sensitive   = true
  type        = string
}

variable "workspace_id" {
  description = "The Airbyte workspace ID to use for testing."
  default     = "266ebdfe-0d7b-4540-9817-de7e4505ba61"
  type        = string
}

resource "airbyte_source_faker" "my_source" {
  name         = "move-workflow-typed-source"
  workspace_id = var.workspace_id
  configuration = {
    count = 100
    seed  = 42
  }
}

resource "airbyte_destination_dev_null" "my_dest" {
  name         = "move-workflow-typed-dest"
  workspace_id = var.workspace_id
  configuration = {
    test_destination = {
      silent = {}
    }
  }
}

resource "airbyte_connection" "my_connection" {
  name           = "move-workflow-test-connection"
  source_id      = airbyte_source_faker.my_source.source_id
  destination_id = airbyte_destination_dev_null.my_dest.destination_id
  schedule = {
    schedule_type = "manual"
  }
  status = "inactive"
}

output "source_id" {
  value       = airbyte_source_faker.my_source.source_id
  description = "The ID of the typed faker source"
}

output "destination_id" {
  value       = airbyte_destination_dev_null.my_dest.destination_id
  description = "The ID of the typed dev-null destination"
}

output "connection_id" {
  value       = airbyte_connection.my_connection.connection_id
  description = "The ID of the connection"
}
