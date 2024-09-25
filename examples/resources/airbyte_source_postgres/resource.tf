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
    username = "Nellie_Grady"
  }
  definition_id = "cfdc6fb5-04a1-42b7-b23c-bf0223ae822e"
  name          = "Thelma Connelly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8cbc0547-dc93-4d7d-b628-c47813582a6f"
}