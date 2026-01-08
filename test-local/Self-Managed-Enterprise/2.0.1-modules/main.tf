terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.13.0"
    }
  }
}

# =============================================================================
# PROVIDER CONFIGURATION
# =============================================================================
provider "airbyte" {
  client_id     = var.client_id
  client_secret = var.client_secret
  server_url    = "https://airbyte-enterprise.conall.org/api/public/v1/"
}

# =============================================================================
# DATA SOURCES
# =============================================================================
data "airbyte_workspace" "default" {
  workspace_id = var.workspace_id
}

# =============================================================================
# DESTINATION: Dev Null (using MODULE approach)
# =============================================================================
# This uses the new module-based approach instead of the built-in
# airbyte_destination_dev_null resource which is being removed.

module "destination_dev_null" {
  source = "../../modules/destination-dev-null/0.8.5"

  workspace_id = data.airbyte_workspace.default.workspace_id
  name         = "dev-null-terraform-module"

  # Use SILENT mode
  test_destination_test_destination_type = "SILENT"
  test_destination_logging_config        = {} # Required by module even for SILENT
  test_destination_millis_per_record     = 0
  test_destination_num_messages          = 0
}

# =============================================================================
# SOURCE: Declarative Custom Source (Exchange Rates API)
# =============================================================================
resource "airbyte_declarative_source_definition" "exchange_rates" {
  manifest     = jsonencode(yamldecode(file("custom_sources/exchange_rates.yaml")))
  name         = "exchange_rates_module_test"
  workspace_id = var.workspace_id
}

resource "airbyte_source_custom" "exchange_rates" {
  definition_id = airbyte_declarative_source_definition.exchange_rates.id
  configuration = jsonencode({
    start_date = "2025-07-01T00:00:00Z"
    api_key    = var.exchange_rates_api_key
    base       = "USD"
  })
  name         = "exchange-rates-module-test"
  workspace_id = var.workspace_id
}

# =============================================================================
# CONNECTION: Source → Destination (using module output)
# =============================================================================
resource "airbyte_connection" "module_example" {
  # Reference the module's output for destination_id
  destination_id = module.destination_dev_null.destination_id
  source_id      = airbyte_source_custom.exchange_rates.source_id

  name                                 = "tf_module_connection_example"
  namespace_definition                 = "custom_format"
  namespace_format                     = "MODULE_TEST"
  non_breaking_schema_updates_behavior = "propagate_fully"

  schedule = {
    schedule_type   = "cron"
    cron_expression = "0 0 8 * * ? UTC"
  }
  status = "active"

  configurations = {
    streams = [
      {
        name      = "Rates"
        sync_mode = "full_refresh_overwrite"
      },
    ]
  }
}

# =============================================================================
# OUTPUTS
# =============================================================================
output "destination_id" {
  description = "ID of the dev-null destination created via module"
  value       = module.destination_dev_null.destination_id
}

output "source_id" {
  description = "ID of the exchange rates source"
  value       = airbyte_source_custom.exchange_rates.source_id
}

output "connection_id" {
  description = "ID of the connection"
  value       = airbyte_connection.module_example.connection_id
}

output "workspace_name" {
  description = "Workspace name"
  value       = data.airbyte_workspace.default.name
}
