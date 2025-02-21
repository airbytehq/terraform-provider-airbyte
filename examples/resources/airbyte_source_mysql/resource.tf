resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    check_privileges                   = false
    checkpoint_target_interval_seconds = 9
    concurrency                        = 2
    database                           = "...my_database..."
    host                               = "...my_host..."
    jdbc_url_params                    = "...my_jdbc_url_params..."
    password                           = "...my_password..."
    port                               = 36347
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        initial_load_timeout_hours           = 1
        invalid_cdc_cursor_position_behavior = "Fail sync"
        method                               = "CDC"
        server_timezone                      = "...my_server_timezone..."
      }
      scan_changes_with_user_defined_cursor = {
        additional_properties = "{ \"see\": \"documentation\" }"
        method                = "STANDARD"
      }
    }
    ssl_mode = {
      preferred = {
        additional_properties = "{ \"see\": \"documentation\" }"
        mode                  = "preferred"
      }
      required = {
        additional_properties = "{ \"see\": \"documentation\" }"
        mode                  = "required"
      }
      verify_ca = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ca_certificate        = "...my_ca_certificate..."
        client_certificate    = "...my_client_certificate..."
        client_key            = "...my_client_key..."
        client_key_password   = "...my_client_key_password..."
        mode                  = "verify_ca"
      }
      verify_identity = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ca_certificate        = "...my_ca_certificate..."
        client_certificate    = "...my_client_certificate..."
        client_key            = "...my_client_key..."
        client_key_password   = "...my_client_key_password..."
        mode                  = "verify_identity"
      }
    }
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
      password_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_PASSWORD_AUTH"
        tunnel_port           = 52583
        tunnel_user           = "...my_tunnel_user..."
        tunnel_user_password  = "...my_tunnel_user_password..."
      }
      ssh_key_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ssh_key               = "...my_ssh_key..."
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_KEY_AUTH"
        tunnel_port           = 26205
        tunnel_user           = "...my_tunnel_user..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "0dfd0bfe-6e77-4725-b2d3-cf8a98202e5e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11f42152-f8a9-43ef-9f56-8a8e0b14bab5"
}