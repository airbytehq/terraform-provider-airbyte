resource "airbyte_destination_vertica" "my_destination_vertica" {
  configuration = {
    database         = "...my_database..."
    destination_type = "vertica"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 5433
    schema           = "...my_schema..."
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Jeff16"
  }
  name         = "Anna Bergnaum"
  workspace_id = "5e139dbc-2259-4b1a-bda8-c070e1084cb0"
}