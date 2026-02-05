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
  bearer_auth = var.airbyte_api_key
}

variable "airbyte_api_key" {
  description = "The Airbyte API Key to use when authenticating to the Airbyte service."
  sensitive   = true
  type        = string
}

resource "airbyte_workspace" "example" {
  name = "1.0-example-workspace"
}

# First source: Faker with default settings
resource "airbyte_source_faker" "faker_1" {
  name         = "source-faker-1"
  workspace_id = airbyte_workspace.example.workspace_id
  configuration = {
    count = 1000
    seed  = 42
  }
}

# Second source: Faker with different settings
resource "airbyte_source_faker" "faker_2" {
  name         = "source-faker-2"
  workspace_id = airbyte_workspace.example.workspace_id
  configuration = {
    count = 500
    seed  = 123
  }
}

# Destination: Dev Null (silent mode)
resource "airbyte_destination_dev_null" "dev_null" {
  name         = "destination-dev-null"
  workspace_id = airbyte_workspace.example.workspace_id
  configuration = {
    test_destination = {
      silent = {}
    }
  }
}

resource "airbyte_connection" "faker_1_to_dev_null" {
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

resource "airbyte_connection" "faker_2_to_dev_null" {
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
  value       = airbyte_workspace.example.workspace_id
  description = "The ID of the created workspace"
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
  value       = airbyte_connection.faker_1_to_dev_null.connection_id
  description = "The ID of the faker-1 to dev-null connection"
}

output "faker_2_connection_id" {
  value       = airbyte_connection.faker_2_to_dev_null.connection_id
  description = "The ID of the faker-2 to dev-null connection"
}
