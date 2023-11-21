resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      service_name = {
        service_name = "...my_service_name..."
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
    port            = 8
    schemas = [
      "...",
    ]
    tunnel_method = {
      source_oracle_no_tunnel = {}
    }
    username = "Hellen.Champlin"
  }
  definition_id = "a1ad7b3d-761e-429e-b26a-e07d2b59ab56"
  name          = "Jake Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c000ccde-ed12-4bd5-ab73-d022a608737f"
}