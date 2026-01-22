resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_load_timeout_hours           = 4
        initial_waiting_seconds              = 0
        invalid_cdc_cursor_position_behavior = "Re-sync data"
        queue_size                           = 9
      }
    }
    schemas = [
    ]
    ssl_method = {
      encrypted_verify_certificate = {
        certificate              = "...my_certificate..."
        host_name_in_certificate = "...my_host_name_in_certificate..."
      }
    }
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "3156776f-a553-4f83-b7be-07e1d515092f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "89a5f137-cba1-4f2e-85cc-db4cd4426082"
}