resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    schema          = "public"
    ssl_method = {
      encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      destination_mssql_no_tunnel = {}
    }
    username = "Amalia.Blick"
  }
  definition_id = "90e1a2bc-7de0-4ff6-b737-4915d3efc2cd"
  name          = "Jorge Beahan"
  workspace_id  = "6acc1e6f-1291-4560-8b55-b326e06d2448"
}