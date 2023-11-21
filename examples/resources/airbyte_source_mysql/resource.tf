resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_waiting_seconds = 7
        server_time_zone        = "...my_server_time_zone..."
      }
    }
    ssl_mode = {
      preferred = {}
    }
    tunnel_method = {
      source_mysql_no_tunnel = {}
    }
    username = "Eino_White"
  }
  definition_id = "aba25784-141a-421c-8938-ad6fcbb78bed"
  name          = "Mr. Ross Cole"
  secret_id     = "...my_secret_id..."
  workspace_id  = "704ae193-8752-47d5-a3ef-7246d0c0b796"
}