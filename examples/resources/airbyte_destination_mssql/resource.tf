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
    username = "Destini.Wehner"
  }
  name         = "Lewis Tromp"
  workspace_id = "4b4ecb39-7d06-4456-aefb-7ef5d37ea6e5"
}