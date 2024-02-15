resource "airbyte_destination_vertica" "my_destination_vertica" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5433
    schema          = "...my_schema..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Avis.Pagac10"
  }
  definition_id = "dffa69fe-7143-4a3e-9a24-4d7bc1a5a6e1"
  name          = "Sherman Cartwright"
  workspace_id  = "13722140-27ee-471b-a38b-d648d54814af"
}