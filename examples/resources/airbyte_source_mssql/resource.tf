resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      source_mssql_replication_method_logical_replication_cdc_ = {
        data_to_sync            = "Existing and New"
        initial_waiting_seconds = 6
        method                  = "CDC"
        snapshot_isolation      = "Read Committed"
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
    username = "Rhianna75"
  }
  name         = "Victor Gleason"
  secret_id    = "...my_secret_id..."
  workspace_id = "da21729f-2ac4-41ef-9725-f1169ac1e41d"
}