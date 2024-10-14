resource "airbyte_source_postgres" "my_source_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    replication_method = {
      detect_changes_with_xmin_system_column = {
        # ...
      }
      read_changes_using_write_ahead_log_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        heartbeat_action_query               = "...my_heartbeat_action_query..."
        initial_load_timeout_hours           = 3
        initial_waiting_seconds              = 3
        invalid_cdc_cursor_position_behavior = "Fail sync"
        lsn_commit_behaviour                 = "While reading Data"
        plugin                               = "pgoutput"
        publication                          = "...my_publication..."
        queue_size                           = 5
        replication_slot                     = "...my_replication_slot..."
      }
      scan_changes_with_user_defined_cursor = {
        # ...
      }
    }
    schemas = [
    ]
    ssl_mode = {
      allow = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
      disable = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
      prefer = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
      require = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
      verify_ca = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ca_certificate        = "...my_ca_certificate..."
        client_certificate    = "...my_client_certificate..."
        client_key            = "...my_client_key..."
        client_key_password   = "...my_client_key_password..."
      }
      verify_full = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ca_certificate        = "...my_ca_certificate..."
        client_certificate    = "...my_client_certificate..."
        client_key            = "...my_client_key..."
        client_key_password   = "...my_client_key_password..."
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
  definition_id = "be56435e-cbaf-420b-889d-1d220ff21125"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d122fa45-e536-42be-a02d-5e851e4eb0a6"
}