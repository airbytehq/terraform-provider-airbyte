# Pin a source connector to a specific version and validate configuration
data "airbyte_connector_configuration" "github" {
  connector_name    = "source-github"
  connector_version = "2.0.0"

  configuration = {
    repositories = ["airbytehq/airbyte"]
    credentials = {
      option_title         = "PAT Credentials"
      personal_access_token = var.github_pat
    }
  }
}

# Use the latest version (default) with separate secrets
data "airbyte_connector_configuration" "postgres" {
  connector_name = "source-postgres"
  # connector_version = "3.6.28"  # optional: pin to a specific version

  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
    schemas  = ["public"]
    ssl_mode = { mode = "prefer" }
  }

  configuration_secrets = {
    username = var.pg_user
    password = var.pg_password
  }
}

# Validate against the OSS registry instead of the default (cloud_and_oss)
data "airbyte_connector_configuration" "postgres_oss" {
  connector_name     = "source-postgres"
  connector_version  = "3.6.28"
  connector_registry = "oss"

  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
  }
}

# Override registry source with a custom URL (must serve well-formatted registry JSON)
data "airbyte_connector_configuration" "custom_url" {
  connector_name     = "source-postgres"
  connector_version  = "3.6.28"
  connector_registry = "https://example.com/my-registry-spec.json"

  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
  }
}

# Override registry source with a local file (must contain well-formatted registry JSON)
data "airbyte_connector_configuration" "local_spec" {
  connector_name     = "source-postgres"
  connector_version  = "3.6.28"
  connector_registry = "./specs/source-postgres.json"

  configuration = {
    host     = "db.example.com"
    port     = 5432
    database = "mydb"
  }
}

# Pass the resolved values to an airbyte_source resource
resource "airbyte_source" "postgres" {
  name            = "Postgres"
  definition_id   = data.airbyte_connector_configuration.postgres.definition_id
  workspace_id    = var.workspace_id
  configuration   = data.airbyte_connector_configuration.postgres.configuration_json
}
