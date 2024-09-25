resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_load_timeout_hours           = 3
        initial_waiting_seconds              = 3
        invalid_cdc_cursor_position_behavior = "Re-sync data"
        server_time_zone                     = "...my_server_time_zone..."
      }
    }
    ssl = false
    ssl_mode = {
      preferred = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Leann60"
  }
  definition_id = "78821427-992f-465a-b105-f2e570ad372e"
  name          = "Tomas Buckridge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9d484141-0fd6-4e7e-8488-16b0c62b8975"
}