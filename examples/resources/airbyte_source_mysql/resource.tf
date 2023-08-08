resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      source_mysql_replication_method_logical_replication_cdc_ = {
        initial_waiting_seconds = 3
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
    username = "Coty77"
  }
  name         = "Debra Ortiz"
  secret_id    = "...my_secret_id..."
  workspace_id = "a8bf92f9-7428-4ad9-a9f8-bf8221125359"
}