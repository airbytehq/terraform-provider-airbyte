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
    username = "Fermin76"
  }
  definition_id = "50c9ec76-747b-406c-b86f-e4a6f8bb810e"
  name          = "Brad Gutkowski"
  workspace_id  = "802e7b21-83b2-4bc4-b6db-7afdacad2c14"
}