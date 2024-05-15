resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_waiting_seconds              = 0
        invalid_cdc_cursor_position_behavior = "Fail sync"
        queue_size                           = 8
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
    username = "Alberta_Flatley20"
  }
  definition_id = "920634c9-db1c-4426-b092-82f0b308e787"
  name          = "Margarita Zieme"
  secret_id     = "...my_secret_id..."
  workspace_id  = "024b690b-2736-4f2f-ba3b-95d4abcb3edf"
}