resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_waiting_seconds              = 7
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
    username = "Ursula_King"
  }
  definition_id = "ba257841-41a2-41c8-938a-d6fcbb78bed9"
  name          = "Bruce Buckridge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "704ae193-8752-47d5-a3ef-7246d0c0b796"
}