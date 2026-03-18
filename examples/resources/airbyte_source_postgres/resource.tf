resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database                     = "...my_database..."
    entra_client_id              = "...my_entra_client_id..."
    entra_service_principal_auth = false
    entra_tenant_id              = "...my_entra_tenant_id..."
    host                         = "...my_host..."
    jdbc_url_params              = "...my_jdbc_url_params..."
    password                     = "...my_password..."
    port                         = 5432
    replication_method = {
      scan_changes_with_user_defined_cursor = {
        # ...
      }
    }
    schemas = [
    ]
    ssl_mode = {
      require = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    tunnel_method = {
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "decd338e-5647-4c0b-adf4-da0e75f5a750"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d122fa45-e536-42be-a02d-5e851e4eb0a6"
}