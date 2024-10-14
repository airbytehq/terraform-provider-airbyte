resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    replication_method = {
      read_changes_using_binary_log_cdc = {
        initial_load_timeout_hours           = 4
        initial_waiting_seconds              = 1
        invalid_cdc_cursor_position_behavior = "Re-sync data"
        server_time_zone                     = "...my_server_time_zone..."
      }
      scan_changes_with_user_defined_cursor = {
        # ...
      }
    }
    ssl = true
    ssl_mode = {
      preferred = {
        # ...
      }
      required = {
        # ...
      }
      verify_ca = {
        ca_certificate      = "...my_ca_certificate..."
        client_certificate  = "...my_client_certificate..."
        client_key          = "...my_client_key..."
        client_key_password = "...my_client_key_password..."
      }
      verify_identity = {
        ca_certificate      = "...my_ca_certificate..."
        client_certificate  = "...my_client_certificate..."
        client_key          = "...my_client_key..."
        client_key_password = "...my_client_key_password..."
      }
    }
    tunnel_method = {
      no_tunnel = {
        # ...
      }
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
      ssh_key_authentication = {
        ssh_key     = "...my_ssh_key..."
        tunnel_host = "...my_tunnel_host..."
        tunnel_port = 22
        tunnel_user = "...my_tunnel_user..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "0dfd0bfe-6e77-4725-b2d3-cf8a98202e5e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11f42152-f8a9-43ef-9f56-8a8e0b14bab5"
}