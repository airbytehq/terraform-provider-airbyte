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
    username = "Marlon_Ernser"
  }
  definition_id = "0c992762-a38a-4a73-979a-85cb72465180"
  name          = "Ms. Amanda Jacobs"
  secret_id     = "...my_secret_id..."
  workspace_id  = "72363e09-a2aa-4e62-99d7-7025755e6995"
}