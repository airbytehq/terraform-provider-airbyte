resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    additional_properties = {
      key = {
        # ...
      }
    }
    additional_properties1             = "{ \"see\": \"documentation\" }"
    check_privileges                   = true
    checkpoint_target_interval_seconds = 300
    concurrency                        = 4
    database                           = "master"
    host                               = "...my_host..."
    jdbc_url_params                    = "...my_jdbc_url_params..."
    password                           = "...my_password..."
    port                               = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        initial_load_timeout_hours           = 8
        initial_waiting_seconds              = 0
        invalid_cdc_cursor_position_behavior = "Fail sync"
        method                               = "CDC"
        poll_interval_ms                     = 500
      }
    }
    schemas = [
    ]
    ssl_mode = {
      unencrypted = {
        additional_properties = "{ \"see\": \"documentation\" }"
        mode                  = "unencrypted"
      }
    }
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
    }
    username = "...my_username..."
  }
  definition_id = "b5ea17b1-f170-46dc-bc31-cc744ca984c1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "89a5f137-cba1-4f2e-85cc-db4cd4426082"
}