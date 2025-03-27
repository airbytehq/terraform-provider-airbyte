resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      # ...
    }
    schemas = [
    ]
    ssl_mode = {
      # ...
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
  definition_id = "be56435e-cbaf-420b-889d-1d220ff21125"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d122fa45-e536-42be-a02d-5e851e4eb0a6"
}