resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_waiting_seconds = 2
      }
    }
    schemas = [
      "...",
    ]
    ssl_method = {
      encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Winnifred_Borer93"
  }
  definition_id = "3b1f2904-4775-4738-8765-c77418014d1f"
  name          = "Gina Fahey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1b77f9fe-0e5e-45f3-86d0-ac5af3c6558d"
}