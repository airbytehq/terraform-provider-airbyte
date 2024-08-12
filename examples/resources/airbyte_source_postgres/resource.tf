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
    username = "Era_Wisoky"
  }
  definition_id = "ec8fedb8-fc35-4367-bfee-523e36b74e8f"
  name          = "Lula Lemke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d76b02a3-d797-4c2f-9023-950717b206b8"
}