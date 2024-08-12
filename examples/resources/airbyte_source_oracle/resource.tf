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
    port            = 9
    schemas = [
      "...",
    ]
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Neha.Abbott"
  }
  definition_id = "3f94739c-c80e-4e5b-b122-5778f7a023c1"
  name          = "Charles Littel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0f694c48-e9d0-4f84-8cba-d71dab038014"
}