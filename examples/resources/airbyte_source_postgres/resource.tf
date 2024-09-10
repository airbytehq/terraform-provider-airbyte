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
    username = "Kaylee22"
  }
  definition_id = "88851ec0-6fd3-4b8c-864e-95a7a3692db0"
  name          = "Cristina Franey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "99dcbdae-34af-4cb0-a318-40729444d2b8"
}