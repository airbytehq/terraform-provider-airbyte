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
    username = "Brian25"
  }
  definition_id = "cf17a668-3bb7-46cb-9d42-c04b7b603cc8"
  name          = "Bryant Lynch"
  workspace_id  = "e7603813-ef7f-4c0d-976e-5f414549f124"
}