# Getting Started with the Airbyte Terraform Provider

This guide walks you through setting up the Airbyte Terraform provider and creating your first source, destination, and connection.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) installed on your machine.
- A code editor, like Visual Studio Code, optionally with a Terraform extension.
- Airbyte credentials:
  - [An API application](https://docs.airbyte.com/platform/using-airbyte/configuring-api-access) in Airbyte, with a client ID and client secret.
  - The URL of your Airbyte server (e.g., `http://localhost:8000/api/public/v1/`). Airbyte Cloud users can omit this (defaults to `https://api.airbyte.com/v1`).
  - Your workspace ID. Open your workspace in Airbyte and copy the ID from the URL (e.g., `039da657-f061-493e-a836-9bce86bc5e35`).
- Source and destination credentials. This guide uses Postgres and BigQuery as examples, but you can substitute any connector.

## Step 1: Set up the provider

Create a directory for your Terraform project, navigate to it, and create the following files.

**`main.tf`** — Provider configuration with variable references for sensitive data:

```terraform
terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "~> 1.0"
    }
  }
}

provider "airbyte" {
  client_id     = var.client_id
  client_secret = var.client_secret

  # Omit server_url for Airbyte Cloud (defaults to https://api.airbyte.com/v1)
  # server_url = "http://localhost:8000/api/public/v1/"
}
```

**`variables.tf`** — Variable definitions for credentials and reusable values:

```terraform
variable "client_id" {
  type      = string
  sensitive = true
}

variable "client_secret" {
  type      = string
  sensitive = true
}

variable "workspace_id" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "gcp_credentials" {
  type      = string
  sensitive = true
}
```

-> Populate these variables using a `terraform.tfvars` file, environment variables (`TF_VAR_client_id`, etc.), or your preferred method. See the [Terraform variables documentation](https://developer.hashicorp.com/terraform/language/values/variables) for details.

Run `terraform init` to download the provider. Then run `terraform plan` to verify the configuration is valid.

## Step 2: Create a source

Add a source using the generic [`airbyte_source`](../resources/source) resource with the [`airbyte_connector_configuration`](../data-sources/connector_configuration) data source for type-validated configuration.

```terraform
data "airbyte_connector_configuration" "postgres_config" {
  connector_name = "source-postgres"

  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    username = "readonly"
  }

  configuration_secrets = {
    password = var.db_password
  }
}

resource "airbyte_source" "postgres" {
  name          = "Production Postgres"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.postgres_config.definition_id
  configuration = data.airbyte_connector_configuration.postgres_config.configuration_json
}
```

The `airbyte_connector_configuration` data source validates your configuration against the connector's JSON schema during `terraform plan`, catching typos and missing fields before apply. It also resolves the `definition_id` automatically from the connector name.

Run `terraform apply` and type `yes` to create the source.

## Step 3: Create a destination

Add a destination the same way. This example uses BigQuery:

```terraform
data "airbyte_connector_configuration" "bigquery_config" {
  connector_name = "destination-bigquery"

  configuration = {
    project_id       = "my-gcp-project"
    dataset_id       = "my_dataset"
    dataset_location = "us-central1"
  }

  configuration_secrets = {
    credentials_json = var.gcp_credentials
  }
}

resource "airbyte_destination" "bigquery" {
  name          = "BigQuery"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.bigquery_config.definition_id
  configuration = data.airbyte_connector_configuration.bigquery_config.configuration_json
}
```

Run `terraform apply` to create the destination.

## Step 4: Create a connection

Create a connection from your source to your destination using the [`airbyte_connection`](../resources/connection) resource:

```terraform
resource "airbyte_connection" "postgres_to_bigquery" {
  name           = "Postgres to BigQuery"
  source_id      = airbyte_source.postgres.source_id
  destination_id = airbyte_destination.bigquery.destination_id
}
```

This connection will not begin automatically enabled and scheduled by default. See the [`airbyte_connection` resource documentation](../resources/connection) for scheduling and other configuration options.

Run `terraform apply` to create the connection.

## Step 5: Verify in Airbyte

Open your Airbyte workspace to see your new source, destination, and connection. You can also verify using the [Airbyte API](https://reference.airbyte.com).

## Next steps

- Browse the full [resource](../resources/source) and [data source](../data-sources/connector_configuration) documentation for all available options.
- If you're upgrading from a pre-1.0 provider version, see the [Migrating to 1.0](v1_migration_guide) guide.
- Check out the [Quickstarts repository](https://github.com/airbytehq/quickstarts) for templates using Terraform and Python.
