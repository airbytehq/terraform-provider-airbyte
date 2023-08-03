resource "airbyte_source_oracle" "my_source_oracle" {
  configuration = {
    connection_data = {
      connection_type = "service_name"
      service_name    = "...my_service_name..."
    }
    encryption = {
      encryption_algorithm = "AES256"
      encryption_method    = "client_nne"
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 6
    schemas = [
      "...",
    ]
    source_type = "oracle"
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Jada.Runolfsson70"
  }
  name         = "Angel Stokes"
  workspace_id = "bce247b7-684e-4ff5-8126-d71cffbd0eb7"
}