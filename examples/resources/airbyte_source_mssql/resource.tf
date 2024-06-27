resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_waiting_seconds              = 7
        invalid_cdc_cursor_position_behavior = "Re-sync data"
        queue_size                           = 7
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
    username = "Caroline_Harvey"
  }
  definition_id = "4141a21c-8938-4ad6-bcbb-78bed98212c7"
  name          = "Eleanor O'Hara V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "387527d5-e3ef-4724-ad0c-0b7968b72421"
}