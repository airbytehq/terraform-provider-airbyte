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
    username = "Flossie.Padberg78"
  }
  definition_id = "6558d9b0-3d25-4bee-bdba-dc477cb62b59"
  name          = "Dr. Kirk Welch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4249578a-5bcb-4bc2-8b83-b2c4dd4d4290"
}