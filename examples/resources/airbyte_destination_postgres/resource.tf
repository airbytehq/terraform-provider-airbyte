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
    username = "Foster.Borer"
  }
  name         = "Karen Kautzer"
  workspace_id = "904f3b11-94b8-4abf-a03a-79f9dfe0ab7d"
}