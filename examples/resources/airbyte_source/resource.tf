# Using the connector_configuration data source (recommended)
data "airbyte_connector_configuration" "postgres" {
  connector_name    = "source-postgres"
  connector_version = "3.6.28"

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

resource "airbyte_source" "postgres" {
  name          = "Postgres Production"
  workspace_id  = var.workspace_id
  definition_id = data.airbyte_connector_configuration.postgres.definition_id
  configuration = data.airbyte_connector_configuration.postgres.configuration_json
}

# Using inline JSON configuration
resource "airbyte_source" "github" {
  name          = "GitHub"
  workspace_id  = var.workspace_id
  definition_id = "ef69ef6e-aa7f-4af1-a01d-ef775033524e"

  configuration = jsonencode({
    repositories = ["airbytehq/airbyte"]
    credentials = {
      option_title          = "PAT Credentials"
      personal_access_token = var.github_pat
    }
  })
}

# Migrating from a typed resource using 'moved' (Terraform >= 1.8)
moved {
  from = airbyte_source_pardot.my_source
  to   = airbyte_source.my_source
}

resource "airbyte_source" "my_source" {
  name          = "Pardot"
  workspace_id  = var.workspace_id
  definition_id = "5e6175e5-68e1-4c17-bff9-56103bbb0d80"

  configuration = jsonencode({
    client_id               = var.pardot_client_id
    client_secret           = var.pardot_client_secret
    refresh_token           = var.pardot_refresh_token
    pardot_business_unit_id = "0Uv5g0000008OT2CAM"
  })
}
