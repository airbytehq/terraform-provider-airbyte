resource "airbyte_source_netsuite_enterprise" "my_source_netsuiteenterprise" {
  configuration = {
    account_id = "...my_account_id..."
    authentication_method = {
      password_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        authentication_method = "password_authentication"
        password              = "...my_password..."
      }
    }
    check_privileges                   = true
    checkpoint_target_interval_seconds = 0
    concurrency                        = 0
    cursor = {
      scan_changes_with_user_defined_cursor = {
        additional_properties = "{ \"see\": \"documentation\" }"
        cursor_method         = "user_defined"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    port            = 23532
    role_id         = "...my_role_id..."
    tunnel_method = {
      ssh_key_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ssh_key               = "...my_ssh_key..."
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_KEY_AUTH"
        tunnel_port           = 57500
        tunnel_user           = "...my_tunnel_user..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "b1a37fdc-e9dc-446b-bb63-0075ceb6310e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "32a5fd0b-a2bf-4401-ab81-427ed8dbf79a"
}