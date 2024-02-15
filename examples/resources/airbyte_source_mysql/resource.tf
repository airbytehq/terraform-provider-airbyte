resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_waiting_seconds = 2
        server_time_zone        = "...my_server_time_zone..."
      }
    }
    ssl_mode = {
      preferred = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Fernando_Kuhn18"
  }
  definition_id = "6398e6ec-d841-4e72-a766-a686faa512d8"
  name          = "Valerie Greenfelder II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5b71123-61f2-46d4-bb86-cdec1a2bc2b8"
}