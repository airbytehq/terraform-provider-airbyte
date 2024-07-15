resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      service_name = {
        service_name = "...my_service_name..."
      }
    }
    encryption = {
      native_network_encryption_nne = {
        encryption_algorithm = "RC4_56"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 2
    schemas = [
      "...",
    ]
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Orin_Romaguera85"
  }
  definition_id = "71dab038-014a-4124-b6e7-b2083a37b0c9"
  name          = "Harry Kuhic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a38aa73d-79a8-45cb-b246-518021619872"
}