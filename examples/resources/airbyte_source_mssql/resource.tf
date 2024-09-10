resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_load_timeout_hours           = 3
        initial_waiting_seconds              = 2
        invalid_cdc_cursor_position_behavior = "Re-sync data"
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
    username = "Ayden.Sanford17"
  }
  definition_id = "5b489304-8e9c-41af-9961-b1c883a57271"
  name          = "Kari Lemke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b6433cb8-2b32-4ad0-bfd9-a9d8ba9b0df8"
}