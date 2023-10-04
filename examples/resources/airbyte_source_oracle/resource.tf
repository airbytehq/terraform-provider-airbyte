resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      source_oracle_connect_by_service_name = {
        service_name = "...my_service_name..."
      }
    }
    encryption = {
      source_oracle_encryption_native_network_encryption_nne = {
        encryption_algorithm = "RC4_56"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 9
    schemas = [
      "...",
    ]
    tunnel_method = {
      source_oracle_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Carolina_Schamberger"
  }
  name         = "Jeannie Conroy"
  secret_id    = "...my_secret_id..."
  workspace_id = "f975a7b1-02e5-4487-915a-2f449e5b0b68"
}