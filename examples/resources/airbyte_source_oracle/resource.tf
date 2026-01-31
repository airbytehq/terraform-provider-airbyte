resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      system_idsid = {
        sid = "...my_sid..."
      }
    }
    encryption = {
      native_network_encryption_nne = {
        encryption_algorithm = "3DES168"
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
    }
    username = "...my_username..."
  }
  definition_id = "19b6db41-3eb9-40e4-9d70-9711de027975"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4ecddd5-3505-44b1-8fbf-25c1225b2856"
}