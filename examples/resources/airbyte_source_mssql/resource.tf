resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        data_to_sync            = "New Changes Only"
        initial_waiting_seconds = 2
        snapshot_isolation      = "Read Committed"
      }
    }
    schemas = [
      "...",
    ]
    ssl_method = {
      source_mssql_encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      source_mssql_no_tunnel = {}
    }
    username = "Salvatore_Weissnat66"
  }
  definition_id = "b6ad0e44-a4dc-4970-8078-573a20ac990f"
  name          = "Wm Corkery"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a67a851-50ea-4861-a0cd-618d74280681"
}