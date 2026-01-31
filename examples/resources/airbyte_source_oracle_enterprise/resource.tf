resource "airbyte_source_oracle_enterprise" "my_source_oracleenterprise" {
  configuration = {
    additional_properties              = "{ \"see\": \"documentation\" }"
    check_privileges                   = false
    checkpoint_target_interval_seconds = 3
    concurrency                        = 1
    connection_data = {
      service_name = {
        additional_properties = "{ \"see\": \"documentation\" }"
        connection_type       = "service_name"
        service_name          = "...my_service_name..."
      }
    }
    cursor = {
      read_changes_using_change_data_capture_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        cursor_method                        = "cdc"
        debezium_shutdown_timeout_seconds    = 4
        initial_load_timeout_hours           = 6
        invalid_cdc_cursor_position_behavior = "Re-sync data"
      }
    }
    encryption = {
      unencrypted = {
        additional_properties = "{ \"see\": \"documentation\" }"
        encryption_method     = "unencrypted"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 59972
    schemas = [
      "..."
    ]
    table_filters = [
      {
        additional_properties = "{ \"see\": \"documentation\" }"
        schema_name           = "...my_schema_name..."
        table_name_patterns = [
          "..."
        ]
      }
    ]
    tunnel_method = {
      password_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_PASSWORD_AUTH"
        tunnel_port           = 8636
        tunnel_user           = "...my_tunnel_user..."
        tunnel_user_password  = "...my_tunnel_user_password..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "f5de1b25-34d6-4890-aabc-b81b1dcc0212"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a58273eb-3c83-4b89-b731-736acd84bdaa"
}