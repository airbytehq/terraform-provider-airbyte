resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      service_name = {
        service_name = "...my_service_name..."
      }
    }
    encryption = {
      native_network_encryption_nne = {
        encryption_algorithm = "AES256"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 10
    schemas = [
      "...",
    ]
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Nicole_Abernathy"
  }
  definition_id = "d3b8cc64-e95a-47a3-a92d-b06d3b499dcb"
  name          = "Oliver Torp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "afcb0631-8407-4294-84d2-b8965caababe"
}