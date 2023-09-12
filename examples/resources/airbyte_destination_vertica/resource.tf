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
    username = "Jackson.Kuvalis"
  }
  name         = "Ida Lubowitz"
  workspace_id = "73a8418d-1623-409f-b092-9921aefb9f58"
}