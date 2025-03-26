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
    }
    ssl_mode = {
      # ...
    }
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
    }
    username = "...my_username..."
  }
  definition_id = "0dfd0bfe-6e77-4725-b2d3-cf8a98202e5e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11f42152-f8a9-43ef-9f56-8a8e0b14bab5"
}