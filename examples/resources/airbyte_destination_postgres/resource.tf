resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database         = "...my_database..."
    destination_type = "postgres"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 5432
    schema           = "public"
    ssl_mode = {
      destination_postgres_ssl_modes_allow = {
        mode = "allow"
      }
    }
    tunnel_method = {
      destination_postgres_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Laron.Gerlach40"
  }
  name         = "Isaac Wolf"
  workspace_id = "7f603e8b-445e-480c-a55e-fd20e457e185"
}