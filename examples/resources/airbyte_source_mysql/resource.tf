resource "airbyte_source_mysql" "my_source_mysql" {
  configuration = {
    additional_properties              = "{ \"see\": \"documentation\" }"
    check_privileges                   = true
    checkpoint_target_interval_seconds = 300
    concurrency                        = 2
    database                           = "...my_database..."
    host                               = "...my_host..."
    jdbc_url_params                    = "...my_jdbc_url_params..."
    max_db_connections                 = 8
    password                           = "...my_password..."
    port                               = 3306
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        initial_load_timeout_hours           = 8
        invalid_cdc_cursor_position_behavior = "Fail sync"
        method                               = "CDC"
        server_timezone                      = "...my_server_timezone..."
      }
    }
    ssl_mode = {
      required = {
        additional_properties = "{ \"see\": \"documentation\" }"
        mode                  = "required"
      }
    }
    table_filters = [
      {
        additional_properties = "{ \"see\": \"documentation\" }"
        database_name         = "...my_database_name..."
        table_name_patterns = [
          "..."
        ]
      }
    ]
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
    }
    username = "...my_username..."
  }
  definition_id = "435bb9a5-7887-4809-aa58-28c27df0d7ad"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "11f42152-f8a9-43ef-9f56-8a8e0b14bab5"
}