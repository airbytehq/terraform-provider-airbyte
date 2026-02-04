# Note: This example requires provider version 1.0.0 or later.
# Update the version constraint once 1.0.0 is released to the Terraform Registry.
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

resource "airbyte_source" "faker" {
  name          = "source-faker"
  workspace_id  = airbyte_workspace.example.workspace_id
  definition_id = "dfd88b22-b603-4c3d-aad7-3701784586b1"
  configuration = {
    sourceType = "faker"
    count      = 1000
    seed       = 42
  }
}

resource "airbyte_source" "datagen" {
  name          = "source-datagen"
  workspace_id  = airbyte_workspace.example.workspace_id
  definition_id = "f14d5125-dc0d-4f6c-abe5-acde821a2203"
  configuration = {
    sourceType = "datagen"
    type       = "INCREMENTAL"
    max_record = 1000
  }
}

resource "airbyte_destination" "dev_null" {
  name          = "destination-dev-null"
  workspace_id  = airbyte_workspace.example.workspace_id
  definition_id = "a7bcc9d8-13b3-4e49-b80d-d020b90045e3"
  configuration = {
    destinationType = "dev-null"
    test_destination = {
      test_destination_type = "SILENT"
    }
  }
}

resource "airbyte_connection" "faker_to_dev_null" {
  name           = "faker-to-dev-null"
  source_id      = airbyte_source.faker.source_id
  destination_id = airbyte_destination.dev_null.destination_id
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

resource "airbyte_connection" "datagen_to_dev_null" {
  name           = "datagen-to-dev-null"
  source_id      = airbyte_source.datagen.source_id
  destination_id = airbyte_destination.dev_null.destination_id
  schedule = {
    schedule_type = "manual"
  }
  configurations = {
    streams = [
      {
        name      = "increment"
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

output "faker_source_id" {
  value       = airbyte_source.faker.source_id
  description = "The ID of the faker source"
}

output "datagen_source_id" {
  value       = airbyte_source.datagen.source_id
  description = "The ID of the datagen source"
}

output "dev_null_destination_id" {
  value       = airbyte_destination.dev_null.destination_id
  description = "The ID of the dev-null destination"
}

output "faker_connection_id" {
  value       = airbyte_connection.faker_to_dev_null.connection_id
  description = "The ID of the faker to dev-null connection"
}

output "datagen_connection_id" {
  value       = airbyte_connection.datagen_to_dev_null.connection_id
  description = "The ID of the datagen to dev-null connection"
}
