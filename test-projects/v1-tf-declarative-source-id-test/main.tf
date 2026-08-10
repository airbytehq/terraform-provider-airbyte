terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = ">= 1.1.0"
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

variable "manifest_description" {
  description = "A harmless manifest value changed between plans."
  default     = "initial declarative source definition"
  type        = string
}

variable "enable_connection" {
  description = "Also create the dev-null destination and connection."
  default     = false
  type        = bool
}

resource "airbyte_declarative_source_definition" "repro" {
  name         = "tf-declarative-source-id-repro"
  workspace_id = var.workspace_id
  manifest = jsonencode({
    version = "0.1.0"
    type    = "DeclarativeSource"
    check = {
      type         = "CheckStream"
      stream_names = []
    }
    definitions = {
      streams = {
        terraform_provider_regression = {
          type = "DeclarativeStream"
          name = "terraform_provider_regression"
          retriever = {
            type = "SimpleRetriever"
            requester = {
              type        = "HttpRequester"
              url_base    = "https://example.com"
              path        = "terraform-provider-regression"
              http_method = "GET"
            }
            record_selector = {
              type = "RecordSelector"
              extractor = {
                type       = "DpathExtractor"
                field_path = []
              }
            }
          }
          schema_loader = {
            type = "InlineSchemaLoader"
            schema = {
              type       = "object"
              properties = {}
            }
          }
        }
      }
    }
    spec = {
      type = "Spec"
      connection_specification = {
        type                 = "object"
        "$schema"            = "http://json-schema.org/draft-07/schema#"
        properties           = {}
        additionalProperties = false
      }
    }
    description = var.manifest_description
  })
}

resource "airbyte_source" "repro" {
  name          = "tf-declarative-source-id-repro"
  workspace_id  = var.workspace_id
  definition_id = airbyte_declarative_source_definition.repro.id
  configuration = jsonencode({})
}

data "airbyte_connector_configuration" "dev_null" {
  count          = var.enable_connection ? 1 : 0
  connector_name = "destination-dev-null"
  configuration = {
    test_destination = {
      test_destination_type = "SILENT"
    }
  }
}

resource "airbyte_destination" "dev_null" {
  count         = var.enable_connection ? 1 : 0
  name          = "tf-declarative-source-id-repro-dev-null"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.dev_null[0].definition_id
  configuration = data.airbyte_connector_configuration.dev_null[0].configuration_json
}

resource "airbyte_connection" "repro" {
  count          = var.enable_connection ? 1 : 0
  name           = "tf-declarative-source-id-repro-connection"
  source_id      = airbyte_source.repro.source_id
  destination_id = airbyte_destination.dev_null[0].destination_id
  schedule = {
    schedule_type = "manual"
  }
  status = "inactive"
}

output "definition_id" {
  value = airbyte_declarative_source_definition.repro.id
}

output "source_id" {
  value = airbyte_source.repro.source_id
}
