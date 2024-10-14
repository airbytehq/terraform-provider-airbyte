resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      service_name = {
        service_name = "...my_service_name..."
      }
      system_idsid = {
        sid = "...my_sid..."
      }
    }
    encryption = {
      native_network_encryption_nne = {
        encryption_algorithm = "3DES168"
      }
      tls_encrypted_verify_certificate = {
        ssl_certificate = "...my_ssl_certificate..."
      }
      unencrypted = {
        # ...
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 22568
    schemas = [
      "..."
    ]
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
  definition_id = "19b6db41-3eb9-40e4-9d70-9711de027975"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4ecddd5-3505-44b1-8fbf-25c1225b2856"
}