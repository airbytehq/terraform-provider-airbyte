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
      destination_vertica_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Carlos_Cronin"
  }
  name         = "Gerald Ondricka"
  workspace_id = "a8c070e1-084c-4b06-b2d1-ad879eeb9665"
}