resource "airbyte_source_sap_hana_enterprise" "my_source_saphanaenterprise" {
  configuration = {
    check_privileges                   = true
    checkpoint_target_interval_seconds = 8
    concurrency                        = 8
    cursor = {
      read_changes_using_change_data_capture_cdc = {
        additional_properties                = "{ \"see\": \"documentation\" }"
        cursor_method                        = "cdc"
        initial_load_timeout_hours           = 4
        invalid_cdc_cursor_position_behavior = "Fail sync"
      }
    }
    encryption = {
      native_network_encryption_nne = {
        additional_properties = "{ \"see\": \"documentation\" }"
        encryption_algorithm  = "3DES168"
        encryption_method     = "client_nne"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 16220
    schemas = [
      "..."
    ]
    tunnel_method = {
      password_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_PASSWORD_AUTH"
        tunnel_port           = 48297
        tunnel_user           = "...my_tunnel_user..."
        tunnel_user_password  = "...my_tunnel_user_password..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "146af6a4-b817-4da8-8507-960bbac6c639"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8cdf60e5-3b70-4620-a70a-c6bfd3b48c4f"
}