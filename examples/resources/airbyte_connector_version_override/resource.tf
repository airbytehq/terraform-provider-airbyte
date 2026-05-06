# Pin every Postgres source actor in a workspace to version 3.6.27.
#
# Requires the AIRBYTE_BEARER_AUTH environment variable to be set to a token
# with admin access to the Airbyte internal config API. config_server_url may
# alternatively be provided via the AIRBYTE_CONFIG_API_URL environment variable.

data "airbyte_connector_configuration" "postgres" {
  connector_name = "source-postgres"
}

resource "airbyte_connector_version_override" "pin_postgres_workspace" {
  config_server_url   = "https://cloud.airbyte.com/api/v1"
  scope_type          = "workspace"
  scope_id            = "266ebdfe-0d7b-4540-9817-de7e4505ba61"
  actor_definition_id = data.airbyte_connector_configuration.postgres.definition_id
  version             = "3.6.27"
  origin_email        = "admin@example.com"
  description         = "Pinned to 3.6.27 until upstream issue #12345 is resolved."
  reference_url       = "https://github.com/airbytehq/airbyte/issues/12345"
}
