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
    port            = 9
    schemas = [
      "...",
    ]
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Jammie.Steuber"
  }
  definition_id = "9b8b6b2c-0920-4aa8-be08-607521b21ea9"
  name          = "Edmund Mraz DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "88f1ee12-f8a7-4db0-98a7-41266a87d389"
}