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

resource "airbyte_source_pardot" "pardot_no_page_size" {
  name         = "pardot-no-page-size-test"
  workspace_id = var.workspace_id

  configuration = {
    client_id               = "test-client-id"
    client_secret           = "test-client-secret"
    refresh_token           = "test-refresh-token"
    pardot_business_unit_id = "0Uv5g0000008OT2CAM"
    start_date              = "2024-07-11T00:00:00Z"
    is_sandbox              = false
  }
}

output "pardot_source_id" {
  value       = airbyte_source_pardot.pardot_no_page_size.source_id
  description = "The ID of the pardot source (created without v5_page_size)"
}
