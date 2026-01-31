resource "airbyte_source_db2_enterprise" "my_source_db2enterprise" {
  configuration = {
    additional_properties              = "{ \"see\": \"documentation\" }"
    check_privileges                   = true
    checkpoint_target_interval_seconds = 3
    concurrency                        = 4
    cursor = {
      scan_changes_with_user_defined_cursor = {
        additional_properties = "{ \"see\": \"documentation\" }"
        cursor_method         = "user_defined"
      }
    }
    database = "...my_database..."
    encryption = {
      tls_encrypted_verify_certificate = {
        additional_properties = "{ \"see\": \"documentation\" }"
        encryption_method     = "encrypted_verify_certificate"
        ssl_certificate       = "...my_ssl_certificate..."
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1660
    schemas = [
      "..."
    ]
    tunnel_method = {
      ssh_key_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        ssh_key               = "...my_ssh_key..."
        tunnel_host           = "...my_tunnel_host..."
        tunnel_method         = "SSH_KEY_AUTH"
        tunnel_port           = 9496
        tunnel_user           = "...my_tunnel_user..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "5f3a2f3e-c7dd-4dc7-a3f2-85d95e88f7c6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b97e1064-ab2b-4e86-bf8e-5dc6a2f9ea8e"
}