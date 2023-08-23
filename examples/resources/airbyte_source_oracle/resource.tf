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
        encryption_algorithm = "AES256"
        encryption_method    = "client_nne"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 10
    schemas = [
      "...",
    ]
    source_type = "oracle"
    tunnel_method = {
      source_oracle_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Lila92"
  }
  name         = "Barbara Hilll"
  secret_id    = "...my_secret_id..."
  workspace_id = "4b935d23-7a72-4f90-849d-6aed4aecb753"
}