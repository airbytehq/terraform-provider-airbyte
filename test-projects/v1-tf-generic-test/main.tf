# Generic Resource Example Project (v1.1+)
# This example uses only generic resources (airbyte_source, airbyte_destination)
# which are the standard approach for provider versions >= 1.1.
#
# Two approaches are demonstrated:
# 1. Generic resources WITH the airbyte_connector_configuration data source
# 2. Generic resources with inline JSON configuration (no data source)

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
  default = "266ebdfe-0d7b-4540-9817-de7e4505ba61"
  type    = string
}

# ---------------------------------------------------------------------------
# Approach 1: Generic resource WITH the connector_configuration data source
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
  name          = "e2e-source-faker-ds"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.faker_config.definition_id
  configuration = data.airbyte_connector_configuration.faker_config.configuration_json
}

data "airbyte_connector_configuration" "e2e_test_destination_config" {
  connector_name = "destination-e2e-test"
  configuration = {
    test_destination = {
      test_destination_type = "LOGGING"
      logging_config = {
        logging_type    = "FirstN"
        max_entry_count = 100
      }
    }
  }
}

resource "airbyte_destination" "e2e_test" {
  name          = "e2e-destination-test"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.e2e_test_destination_config.definition_id
  configuration = data.airbyte_connector_configuration.e2e_test_destination_config.configuration_json
}

resource "airbyte_connection" "faker_ds_to_e2e" {
  name           = "e2e-faker-ds-to-test"
  source_id      = airbyte_source.faker_via_data_source.source_id
  destination_id = airbyte_destination.e2e_test.destination_id
  schedule = {
    schedule_type = "manual"
  }
  status = "inactive"
}

# ---------------------------------------------------------------------------
# Approach 2: Generic resource WITHOUT the data source (inline JSON config)
# ---------------------------------------------------------------------------
# Pass the definition_id and configuration directly. The entire configuration
# attribute is marked sensitive by the provider.

resource "airbyte_source" "faker_inline" {
  name          = "e2e-source-faker-inline"
  workspace_id  = var.workspace_id
  definition_id = "dfd88b22-b603-4c3d-aad7-3701784586b1"
  configuration = jsonencode({
    count = 300
    seed  = 7
  })
}

resource "airbyte_connection" "faker_inline_to_e2e" {
  name           = "e2e-faker-inline-to-test"
  source_id      = airbyte_source.faker_inline.source_id
  destination_id = airbyte_destination.e2e_test.destination_id
  schedule = {
    schedule_type = "manual"
  }
  status = "inactive"
}

output "workspace_id" {
  value       = var.workspace_id
  description = "The ID of the workspace"
}

output "faker_ds_source_id" {
  value       = airbyte_source.faker_via_data_source.source_id
  description = "The ID of the generic faker source (via data source)"
}

output "faker_inline_source_id" {
  value       = airbyte_source.faker_inline.source_id
  description = "The ID of the generic faker source (inline config)"
}

output "e2e_test_destination_id" {
  value       = airbyte_destination.e2e_test.destination_id
  description = "The ID of the E2E test destination"
}

output "faker_ds_connection_id" {
  value       = airbyte_connection.faker_ds_to_e2e.connection_id
  description = "The ID of the faker-ds to e2e-test connection"
}

output "faker_inline_connection_id" {
  value       = airbyte_connection.faker_inline_to_e2e.connection_id
  description = "The ID of the faker-inline to e2e-test connection"
}
