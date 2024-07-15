resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      detect_changes_with_xmin_system_column = {}
    }
    schemas = [
      "...",
    ]
    ssl_mode = {
      allow = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Jayme_Boyer"
  }
  definition_id = "206b8fda-8b48-4bf3-b0e9-631ebcafaa2e"
  name          = "Dr. Clinton Osinski DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b6197095-b91e-4126-900f-09eb706bb016"
}