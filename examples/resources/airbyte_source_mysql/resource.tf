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
    username = "Eusebio86"
  }
  name         = "Herman Greenfelder"
  secret_id    = "...my_secret_id..."
  workspace_id = "9ee22446-0443-4bc1-9418-8c2f56e85da7"
}