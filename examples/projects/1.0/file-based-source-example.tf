# Example: File-based source with start_date configuration
#
# This example demonstrates the correct datetime format for file-based sources
# like SharePoint Enterprise, S3, Azure Blob Storage, etc.
#
# IMPORTANT: Datetime Format Requirements
# =======================================
# Many file-based connectors require a specific datetime format for the `start_date` field.
# The format must be ISO8601/RFC3339 compliant with microseconds:
#
#   Format: YYYY-MM-DDTHH:MM:SS.ffffffZ
#   Example: 2025-01-01T00:00:00.000000Z
#
# Common Issues:
# - Using "2025-01-01T00:00:00Z" (missing microseconds) will fail validation
# - The microseconds portion (.000000) is REQUIRED for most file-based connectors
#
# Note: This example uses placeholder values. Replace with your actual credentials
# and configuration values.

# Example: SharePoint Enterprise source with start_date
# Definition ID for source-sharepoint-enterprise: varies by environment
resource "airbyte_source" "sharepoint_enterprise_example" {
  name          = "sharepoint-enterprise-example"
  workspace_id  = var.workspace_id
  definition_id = var.sharepoint_definition_id

  # Use jsonencode() to pass configuration as JSON
  # The start_date MUST include microseconds (6 digits after the decimal)
  configuration = jsonencode({
    sourceType = "sharepoint-enterprise"

    # Authentication - replace with your actual credentials
    tenant_id     = var.sharepoint_tenant_id
    client_id     = var.sharepoint_client_id
    client_secret = var.sharepoint_client_secret

    # Site URL
    site_url = var.sharepoint_site_url

    # IMPORTANT: start_date format with microseconds
    # Correct format: "2025-01-01T00:00:00.000000Z"
    # Incorrect format: "2025-01-01T00:00:00Z" (will fail validation)
    start_date = "2025-01-01T00:00:00.000000Z"

    # Stream configuration
    streams = [
      {
        name   = "documents"
        format = { filetype = "unstructured" }
        globs  = ["**/*.pdf", "**/*.docx"]
      }
    ]
  })
}

# Example: S3 source with start_date
# Definition ID for source-s3: 69589781-7828-43c5-9f63-8925b1c1ccc2
resource "airbyte_source" "s3_example" {
  name          = "s3-example"
  workspace_id  = var.workspace_id
  definition_id = "69589781-7828-43c5-9f63-8925b1c1ccc2"

  configuration = jsonencode({
    sourceType = "s3"

    # AWS credentials
    aws_access_key_id     = var.aws_access_key_id
    aws_secret_access_key = var.aws_secret_access_key

    # Bucket configuration
    bucket = var.s3_bucket
    region_name = var.aws_region

    # IMPORTANT: start_date with microseconds
    start_date = "2025-01-01T00:00:00.000000Z"

    # Stream configuration
    streams = [
      {
        name   = "data_files"
        format = { filetype = "csv" }
        globs  = ["data/*.csv"]
      }
    ]
  })
}

# Example: Notion source with start_date
# Definition ID for source-notion: 6e00b415-b02e-4160-bf02-58176a0ae687
resource "airbyte_source" "notion_example" {
  name          = "notion-example"
  workspace_id  = var.workspace_id
  definition_id = "6e00b415-b02e-4160-bf02-58176a0ae687"

  configuration = jsonencode({
    sourceType = "notion"

    credentials = {
      auth_type = "token"
      token     = var.notion_token
    }

    # IMPORTANT: start_date format
    # For Notion, the format requires 3 millisecond digits: YYYY-MM-DDTHH:MM:SS.sssZ
    # Example: "2025-01-01T00:00:00.000Z"
    start_date = "2025-01-01T00:00:00.000Z"
  })
}

# Variables for the examples
variable "workspace_id" {
  description = "The Airbyte workspace ID"
  type        = string
}

variable "sharepoint_definition_id" {
  description = "The definition ID for SharePoint Enterprise source"
  type        = string
  default     = ""
}

variable "sharepoint_tenant_id" {
  description = "SharePoint tenant ID"
  type        = string
  default     = ""
  sensitive   = true
}

variable "sharepoint_client_id" {
  description = "SharePoint client ID"
  type        = string
  default     = ""
  sensitive   = true
}

variable "sharepoint_client_secret" {
  description = "SharePoint client secret"
  type        = string
  default     = ""
  sensitive   = true
}

variable "sharepoint_site_url" {
  description = "SharePoint site URL"
  type        = string
  default     = ""
}

variable "aws_access_key_id" {
  description = "AWS access key ID"
  type        = string
  default     = ""
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
  type        = string
  default     = ""
  sensitive   = true
}

variable "s3_bucket" {
  description = "S3 bucket name"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "notion_token" {
  description = "Notion API token"
  type        = string
  default     = ""
  sensitive   = true
}
