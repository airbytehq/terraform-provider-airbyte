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
        initial_waiting_seconds = 4
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
    username = "Tomas22"
  }
  name         = "Jon Wilkinson"
  secret_id    = "...my_secretId..."
  workspace_id = "e4aa8685-5596-4673-aaa5-dcb6682cb70f"
}