resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      source_mssql_update_method_read_changes_using_change_data_capture_cdc_ = {
        data_to_sync            = "New Changes Only"
        initial_waiting_seconds = 7
        method                  = "CDC"
        snapshot_isolation      = "Snapshot"
      }
    }
    schemas = [
      "...",
    ]
    source_type = "mssql"
    ssl_method = {
      source_mssql_ssl_method_encrypted_trust_server_certificate_ = {
        ssl_method = "encrypted_trust_server_certificate"
      }
    }
    tunnel_method = {
      source_mssql_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Bobbie60"
  }
  name         = "Clarence Murazik"
  secret_id    = "...my_secret_id..."
  workspace_id = "1ef5725f-1169-4ac1-a41d-8a23c23e34f2"
}