resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_waiting_seconds = 5
        server_time_zone        = "...my_server_time_zone..."
      }
    }
    ssl_mode = {
      preferred = {}
    }
    tunnel_method = {
      source_mysql_no_tunnel = {}
    }
    username = "Bernadette63"
  }
  name         = "Ricardo O'Keefe"
  secret_id    = "...my_secret_id..."
  workspace_id = "c65536a2-05f1-4e4d-b09e-a5800594fbd8"
}