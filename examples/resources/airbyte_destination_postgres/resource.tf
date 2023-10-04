resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl_mode = {
      destination_postgres_ssl_modes_allow = {}
    }
    tunnel_method = {
      destination_postgres_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Tremayne.OConnell"
  }
  name         = "Howard Franecki"
  workspace_id = "4a59e7bf-d1d4-496b-914d-08d4a7d5d4b2"
}