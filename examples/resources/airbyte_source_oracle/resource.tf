resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      source_oracle_connect_by_service_name = {
        connection_type = "service_name"
        service_name    = "...my_service_name..."
      }
    }
    encryption = {
      source_oracle_encryption_native_network_encryption_nne_ = {
        encryption_algorithm = "RC4_56"
        encryption_method    = "client_nne"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 4
    schemas = [
      "...",
    ]
    source_type = "oracle"
    tunnel_method = {
      source_oracle_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Oswaldo42"
  }
  name         = "Cheryl McKenzie"
  secret_id    = "...my_secret_id..."
  workspace_id = "b90f2e09-d19d-42fc-af9e-2e105944b935"
}