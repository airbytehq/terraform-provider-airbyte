resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_load_timeout_hours           = 10
        initial_waiting_seconds              = 5
        invalid_cdc_cursor_position_behavior = "Fail sync"
        queue_size                           = 3
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
    username = "Marjorie.Herzog"
  }
  definition_id = "309cc0ee-4bba-47fa-ad57-2054daa84a4e"
  name          = "Tracey Wolf"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10a8a64b-77a4-4fe6-b039-288c95001e51"
}