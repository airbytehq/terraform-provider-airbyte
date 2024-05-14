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
    port            = 6
    schemas = [
      "...",
    ]
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Louie13"
  }
  definition_id = "d517fc88-bc49-498d-b5ef-edea337d55b1"
  name          = "Roberta Mueller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b92c72d5-41f5-4389-a8a5-0561c1cc6291"
}