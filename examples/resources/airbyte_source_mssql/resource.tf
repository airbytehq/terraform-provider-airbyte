resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      source_mssql_update_method_read_changes_using_change_data_capture_cdc = {
        data_to_sync            = "Existing and New"
        initial_waiting_seconds = 0
        snapshot_isolation      = "Snapshot"
      }
    }
    schemas = [
      "...",
    ]
    ssl_method = {
      source_mssql_ssl_method_encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      source_mssql_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Jaylon.Block"
  }
  name         = "Mercedes Abernathy"
  secret_id    = "...my_secret_id..."
  workspace_id = "f4b5e4c1-9596-4433-a1d5-1484aac586d0"
}