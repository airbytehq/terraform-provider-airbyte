resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_load_timeout_hours           = 6
        initial_waiting_seconds              = 1
        invalid_cdc_cursor_position_behavior = "Re-sync data"
        server_time_zone                     = "...my_server_time_zone..."
      }
    }
    ssl_mode = {
      preferred = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Harrison_Steuber"
  }
  definition_id = "05ab7b93-31a5-4dda-bad6-ab5ec8caacd8"
  name          = "Victor Pacocha"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dc0f3381-1dda-4d7d-b9aa-2af68e00dcda"
}