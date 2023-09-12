resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      source_mysql_update_method_read_changes_using_binary_log_cdc_ = {
        initial_waiting_seconds = 10
        method                  = "CDC"
        server_time_zone        = "...my_server_time_zone..."
      }
    }
    source_type = "mysql"
    ssl_mode = {
      source_mysql_ssl_modes_preferred = {
        mode = "preferred"
      }
    }
    tunnel_method = {
      source_mysql_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Carley25"
  }
  name         = "Ruth Goodwin"
  secret_id    = "...my_secret_id..."
  workspace_id = "bc154188-c2f5-46e8-9da7-832eabd617c3"
}