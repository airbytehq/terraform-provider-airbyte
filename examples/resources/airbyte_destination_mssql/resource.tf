resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    raw_data_schema = "...my_raw_data_schema..."
    schema          = "public"
    ssl_method = {
      encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Hope.Toy"
  }
  definition_id = "f1c50c9e-c767-447b-86cf-86fe4a6f8bb8"
  name          = "Lisa Von"
  workspace_id  = "46f802e7-b218-43b2-bc4f-6db7afdacad2"
}