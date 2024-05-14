resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_waiting_seconds              = 4
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
    username = "Freddie.Deckow"
  }
  definition_id = "5553a713-498a-43f9-b99a-12d6e33e66d7"
  name          = "Melissa Stoltenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "72456d0d-26d9-4147-bb35-66ca647ba4f7"
}