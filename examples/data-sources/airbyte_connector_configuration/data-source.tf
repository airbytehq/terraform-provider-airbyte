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

# Pass the resolved values to an airbyte_source resource
resource "airbyte_source" "postgres" {
  name            = "Postgres"
  definition_id   = data.airbyte_connector_configuration.postgres.definition_id
  workspace_id    = var.workspace_id
  configuration   = data.airbyte_connector_configuration.postgres.configuration_json
}
