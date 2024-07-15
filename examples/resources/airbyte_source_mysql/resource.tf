resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_load_timeout_hours           = 7
        initial_waiting_seconds              = 8
        invalid_cdc_cursor_position_behavior = "Fail sync"
        server_time_zone                     = "...my_server_time_zone..."
      }
    }
    ssl_mode = {
      preferred = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Rachelle.Rippin"
  }
  definition_id = "b2c4dd4d-4290-4774-9ee0-bbab0457d926"
  name          = "Miriam Lynch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ecd841e7-2a76-46a6-86fa-a512d8044b05"
}