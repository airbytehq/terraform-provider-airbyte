# 1.0 Example Project
# This example uses connector-specific resources (airbyte_source_faker, airbyte_destination_dev_null)
# which continue to be supported in provider version 1.0.0 and later.

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
  # Workaround for https://github.com/airbytehq/terraform-provider-airbyte/issues/280
  # TK-TODO: Resolve before merging.
  token_url     = "https://api.airbyte.com/v1/applications/token"
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
  # Default to the Devin Sandbox workspace for this example
  default     = "266ebdfe-0d7b-4540-9817-de7e4505ba61"
  type        = string
}

variable "motherduck_api_key" {
  description = "MotherDuck API key for destination authentication."
  sensitive   = true
  type        = string
}

# First source: Faker with default settings
resource "airbyte_source_faker" "faker_1" {
  name         = "source-faker-1"
  workspace_id = var.workspace_id
  configuration = {
    count = 1000
    seed  = 42
  }
}

# Second source: Faker with different settings
resource "airbyte_source_faker" "faker_2" {
  name         = "source-faker-2"
  workspace_id = var.workspace_id
  configuration = {
    count = 500
    seed  = 123
  }
}

# Destination: MotherDuck
# NOTE: Currently fails with "value-not-found" error in Airbyte Cloud
# See: https://github.com/airbytehq/terraform-provider-airbyte/issues/281
# TK-TODO: Resolve before merging
resource "airbyte_destination_dev_null" "dev_null" {
  name         = "destination-dev-null"
  workspace_id = var.workspace_id
  configuration = {
    test_destination = {
      silent = {}
    }
  }
}

resource "airbyte_connection" "faker_1_to_motherduck" {
  name           = "faker-1-to-dev-null"
  source_id      = airbyte_source_faker.faker_1.source_id
  destination_id = airbyte_destination_dev_null.dev_null.destination_id
  schedule = {
    schedule_type = "manual"
  }
  configurations = {
    streams = [
      {
        name      = "users"
        sync_mode = "full_refresh_overwrite"
      },
      {
        name      = "products"
        sync_mode = "full_refresh_overwrite"
      },
      {
        name      = "purchases"
        sync_mode = "full_refresh_overwrite"
      }
    ]
  }
  status = "inactive"
}

resource "airbyte_connection" "faker_2_to_motherduck" {
  name           = "faker-2-to-dev-null"
  source_id      = airbyte_source_faker.faker_2.source_id
  destination_id = airbyte_destination_dev_null.dev_null.destination_id
  schedule = {
    schedule_type = "manual"
  }
  configurations = {
    streams = [
      {
        name      = "users"
        sync_mode = "full_refresh_overwrite"
      },
      {
        name      = "products"
        sync_mode = "full_refresh_overwrite"
      },
      {
        name      = "purchases"
        sync_mode = "full_refresh_overwrite"
      }
    ]
  }
  status = "inactive"
}

output "workspace_id" {
  value       = var.workspace_id
  description = "The ID of the workspace"
}

output "faker_1_source_id" {
  value       = airbyte_source_faker.faker_1.source_id
  description = "The ID of the first faker source"
}

output "faker_2_source_id" {
  value       = airbyte_source_faker.faker_2.source_id
  description = "The ID of the second faker source"
}

output "dev_null_destination_id" {
  value       = airbyte_destination_dev_null.dev_null.destination_id
  description = "The ID of the dev-null destination"
}

output "faker_1_connection_id" {
  value       = airbyte_connection.faker_1_to_motherduck.connection_id
  description = "The ID of the faker-1 to MotherDuck connection"
}

output "faker_2_connection_id" {
  value       = airbyte_connection.faker_2_to_motherduck.connection_id
  description = "The ID of the faker-2 to MotherDuck connection"
}
