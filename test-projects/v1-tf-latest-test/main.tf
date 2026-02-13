# 1.0 Example Project
# This example demonstrates three approaches to creating connectors:
# 1. Typed resources (airbyte_source_faker, airbyte_destination_dev_null)
# 2. Generic resources with the airbyte_connector_configuration data source
# 3. Generic resources with inline JSON configuration (no data source)

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
  # Default to the Devin Sandbox workspace for this example
  default     = "266ebdfe-0d7b-4540-9817-de7e4505ba61"
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

# Destination: Dev Null (for testing)
resource "airbyte_destination_dev_null" "dev_null" {
  name         = "destination-dev-null"
  workspace_id = var.workspace_id
  configuration = {
    test_destination = {
      silent = {}
    }
  }
}

resource "airbyte_connection" "faker_1_to_devnull" {
  name           = "faker-1-to-dev-null"
  source_id      = airbyte_source_faker.faker_1.source_id
  destination_id = airbyte_destination_dev_null.dev_null.destination_id
  schedule = {
    schedule_type = "manual"
  }
  status = "inactive"
}

resource "airbyte_connection" "faker_2_to_devnull" {
  name           = "faker-2-to-dev-null"
  source_id      = airbyte_source_faker.faker_2.source_id
  destination_id = airbyte_destination_dev_null.dev_null.destination_id
  schedule = {
    schedule_type = "manual"
  }
  status = "inactive"
}

# ---------------------------------------------------------------------------
# Approach 2: Generic resource WITH the connector_configuration data source
# ---------------------------------------------------------------------------
# The data source resolves the connector name to a definition_id and merges
# non-sensitive + sensitive configuration into a single sensitive JSON blob.

data "airbyte_connector_configuration" "faker_config" {
  connector_name = "source-faker"
  configuration = {
    count = 200
    seed  = 99
  }
}

resource "airbyte_source" "faker_via_data_source" {
  name          = "source-faker-generic-ds"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.faker_config.definition_id
  configuration = data.airbyte_connector_configuration.faker_config.configuration_json
}

# ---------------------------------------------------------------------------
# Approach 3: Generic resource WITHOUT the data source (inline JSON config)
# ---------------------------------------------------------------------------
# Pass the definition_id and configuration directly. The entire configuration
# attribute is marked sensitive by the provider.

resource "airbyte_source" "faker_inline" {
  name          = "source-faker-generic-inline"
  workspace_id  = var.workspace_id
  definition_id = "dfd88b22-b603-4c3d-aad7-3701784586b1"
  configuration = jsonencode({
    count = 300
    seed  = 7
  })
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
  value       = airbyte_connection.faker_1_to_devnull.connection_id
  description = "The ID of the faker-1 to dev-null connection"
}

output "faker_2_connection_id" {
  value       = airbyte_connection.faker_2_to_devnull.connection_id
  description = "The ID of the faker-2 to dev-null connection"
}

output "faker_generic_ds_source_id" {
  value       = airbyte_source.faker_via_data_source.source_id
  description = "The ID of the generic faker source (via data source)"
}

output "faker_inline_source_id" {
  value       = airbyte_source.faker_inline.source_id
  description = "The ID of the generic faker source (inline config)"
}
