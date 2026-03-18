resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      system_idsid = {
        sid = "...my_sid..."
      }
    }
    encryption = {
      tls_encrypted_verify_certificate = {
        ssl_certificate = "...my_ssl_certificate..."
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1521
    schemas = [
      "..."
    ]
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "b39a7370-74c3-45a6-ac3a-380d48520a83"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4ecddd5-3505-44b1-8fbf-25c1225b2856"
}